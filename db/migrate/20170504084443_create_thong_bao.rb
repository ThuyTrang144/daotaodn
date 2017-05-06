class CreateThongBao < ActiveRecord::Migration[5.0]
  def change
    create_table :thong_bao do |t|
      t.string :tieu_de
      t.text :noi_dung_khai_quat
      t.mediumtext :noi_dung
      t.string :anh
      t.integer :loai_hien_thi

      t.timestamps
    end
  end
end