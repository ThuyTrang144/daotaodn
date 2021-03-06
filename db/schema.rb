# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170507013324) do

  create_table "bac_dao_tao", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "kyhieu"
    t.string   "tenbacdaotao"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "chi_tiet_dao_tao", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "kyhoc"
    t.integer  "mon_hoc_id"
    t.integer  "chuong_trinh_dao_tao_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["chuong_trinh_dao_tao_id"], name: "fk_rails_e6e4df5a66", using: :btree
    t.index ["mon_hoc_id"], name: "fk_rails_28b22654cf", using: :btree
  end

  create_table "chuong_trinh_dao_tao", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "mactdt"
    t.string   "tenctdt"
    t.integer  "sotinchi"
    t.integer  "bac_dao_tao_id"
    t.integer  "khoa_hoc_id"
    t.integer  "khoa_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["bac_dao_tao_id"], name: "fk_rails_c26e066803", using: :btree
    t.index ["khoa_hoc_id"], name: "fk_rails_be0ce7369b", using: :btree
    t.index ["khoa_id"], name: "fk_rails_284331f29e", using: :btree
  end

  create_table "chuyen_mon", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "chuyenmon"
    t.integer  "giao_vien_id"
    t.integer  "mon_hoc_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["giao_vien_id"], name: "fk_rails_9d254a250e", using: :btree
    t.index ["mon_hoc_id"], name: "fk_rails_18bcc98659", using: :btree
  end

  create_table "ckeditor_assets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
    t.index ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree
  end

  create_table "giao_vien", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "tengiaovien"
    t.date     "namsinh"
    t.integer  "khoa_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["khoa_id"], name: "fk_rails_d58f30666d", using: :btree
  end

  create_table "khoa", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "tenkhoa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "khoa_hoc", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "tenkhoahoc"
    t.date     "nambatdau"
    t.date     "namketthuc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lich_giang", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date     "ngayday"
    t.string   "phonghoc"
    t.integer  "tietbatday"
    t.integer  "tietketthuc"
    t.text     "noidungday",  limit: 65535
    t.integer  "danhgia"
    t.integer  "phan_mon_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["phan_mon_id"], name: "fk_rails_af86e017e4", using: :btree
  end

  create_table "loai_mon_hoc", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "ten"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lop", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "tenlop"
    t.integer  "chuong_trinh_dao_tao_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["chuong_trinh_dao_tao_id"], name: "fk_rails_950eef82e3", using: :btree
  end

  create_table "lop_hoc_phan", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "ma_lhp"
    t.string   "tenlop"
    t.integer  "chuong_trinh_dao_tao_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["chuong_trinh_dao_tao_id"], name: "fk_rails_272ed44e8e", using: :btree
  end

  create_table "mon_hoc", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "mamonhoc"
    t.string   "tenmonhoc"
    t.string   "cachviettat"
    t.float    "hesotinchi",      limit: 24
    t.integer  "loai"
    t.integer  "loai_mon_hoc_id"
    t.integer  "khoa_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["khoa_id"], name: "fk_rails_593db008d1", using: :btree
    t.index ["loai_mon_hoc_id"], name: "fk_rails_440310e35f", using: :btree
  end

  create_table "phan_mon", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "hocky"
    t.integer  "sotiet"
    t.integer  "giao_vien_id"
    t.integer  "chuong_trinh_dao_tao_id"
    t.integer  "mon_hoc_id"
    t.integer  "lop_id"
    t.integer  "thuchanh"
    t.date     "ngaybatdau"
    t.date     "ngayketthuc"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "sinh_vien", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "tensinhvien"
    t.date     "namsinh"
    t.integer  "lop_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["lop_id"], name: "fk_rails_1bd546070b", using: :btree
  end

  create_table "tai_khoan", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "username",               default: "", null: false
    t.string   "name",                   default: "", null: false
    t.integer  "role",                   default: 0,  null: false
    t.integer  "giao_vien_id"
    t.integer  "sinh_vien_id"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_tai_khoan_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_tai_khoan_on_reset_password_token", unique: true, using: :btree
  end

  create_table "thong_bao", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "tieu_de"
    t.text     "noi_dung_khai_quat", limit: 65535
    t.text     "noi_dung",           limit: 16777215
    t.string   "anh"
    t.integer  "loai_hien_thi"
    t.date     "ngay_thong_bao"
    t.integer  "gui_den"
    t.integer  "giao_vien_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["giao_vien_id"], name: "fk_rails_aeef83050a", using: :btree
  end

  add_foreign_key "chi_tiet_dao_tao", "chuong_trinh_dao_tao"
  add_foreign_key "chi_tiet_dao_tao", "mon_hoc"
  add_foreign_key "chuong_trinh_dao_tao", "bac_dao_tao"
  add_foreign_key "chuong_trinh_dao_tao", "khoa"
  add_foreign_key "chuong_trinh_dao_tao", "khoa_hoc"
  add_foreign_key "chuyen_mon", "giao_vien"
  add_foreign_key "chuyen_mon", "mon_hoc"
  add_foreign_key "giao_vien", "khoa"
  add_foreign_key "lich_giang", "phan_mon"
  add_foreign_key "lop", "chuong_trinh_dao_tao"
  add_foreign_key "lop_hoc_phan", "chuong_trinh_dao_tao"
  add_foreign_key "mon_hoc", "khoa"
  add_foreign_key "mon_hoc", "loai_mon_hoc"
  add_foreign_key "sinh_vien", "lop"
  add_foreign_key "thong_bao", "giao_vien"
end
