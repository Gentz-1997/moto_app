class AddFixedTagsToTags < ActiveRecord::Migration[7.1]
  # def change
  # end

  def up
    Tag.create([{ tag_name: '絶景スポット' }, { tag_name: '名道' }, { tag_name: 'バイク駐車場' }, { tag_name: 'バイクショップ' }, { tag_name: '温泉・サウナ' }, { tag_name: 'カフェ' }])
  end

  def down
    Tag.where(tag_name: ['絶景スポット', '名道', 'バイク駐車場', 'バイクショップ', '温泉・サウナ', 'カフェ']).delete_all
  end
end
