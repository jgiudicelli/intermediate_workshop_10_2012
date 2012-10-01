class MigrateShoutsToTextShouts < ActiveRecord::Migration
  def up
    add_column :shouts, :content_type, :string
    add_column :shouts, :content_id, :integer

    select_all("SELECT id, body FROM shouts").each do |shout|
      content_id = insert(<<-SQL)
        INSERT INTO text_shouts(body)
        VALUES(#{quote(shout['body'])})
      SQL

      update(<<-SQL)
        UPDATE shouts
        SET content_type = 'TextShout',
            content_id = '#{content_id}'
        WHERE id = '#{shout['id']}'
      SQL
    end

    remove_column :shouts, :body
  end

  def down
    add_column :shouts, :body, :string

    select_all("SELECT id, content_id FROM shouts").each do |shout|
      content = select_one(<<-SQL)
        SELECT body
        FROM text_shouts
        WHERE id = '#{shout['content_id']}'
      SQL

      update(<<-SQL)
        UPDATE shouts
        SET body=#{quote(content['body'])}
        WHERE id = '#{shout['id']}'
      SQL
    end

    delete("DELETE FROM text_shouts")

    remove_column :shouts, :content_type
    remove_column :shouts, :content_id
  end
end
