class AddLowerIndexForUsers < ActiveRecord::Migration[6.0]
  def up
    add_index :users, "lower(last_name) varchar_pattern_ops"
    add_index :users, "lower(first_name) varchar_pattern_ops"
    add_index :users, "lower(email)"
    add_index :users, "regexp_replace(phone, '[^0-9]+', '')"
  end

  def down
    remove_index :users, name: "index_users_on_lower_last_name_varchar_pattern_ops"
    remove_index :users, name: "index_users_on_lower_first_name_varchar_pattern_ops"
    remove_index :users, name: "index_users_on_lower_email"
    remove_index :users, name: "index_users_on_regexp_replace_phone_0_9"
  end
end
