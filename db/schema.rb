
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to

# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_29_092432) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end
  
  create_table 'comments', force: :cascade do |t|
    t.string 'author_name'
    t.text 'body'
    t.integer 'article_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['article_id'], name: 'index_comments_on_article_id'
  end
  
  create_table 'taggings', force: :cascade do |t|
    t.integer 'tag_id', null: false
    t.integer 'article_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['article_id'], name: 'index_taggings_on_article_id'
    t.index ['tag_id'], name: 'index_taggings_on_tag_id'
  end

end
