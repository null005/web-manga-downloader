class ChangeDataTypeForPassword < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      change_table :users do |t|
        dir.up  { t.change :password, :string}
        dir.down{ t.change :password, :integer}
      end
    end
  end
end
