def hash_param(first, the_hash)
  p "hash_param"
  p "first=#{first}"
  p "hash=#{the_hash}"
end

hash_param(:symbol1, {aaa: 'valueA', bbb: 'valueB'})
hash_param(:symbol2, aaa: 'valueAAA', bbb: 'valueBBB')

def hash_arg_list(first, aaa: 123, bbb:)
  p "hash_arg_list"
  p "first=#{first}"
  p "aaa=#{aaa}"
  p "bbb=#{bbb}"
end

hash_arg_list(":something", bbb: 999, aaa: 888)

def hash_arg_list_gobble(first, aaa: 123, bbb:, **rest)
  p "hash_arg_list_gobble"
  p "first=#{first}"
  p "aaa=#{aaa}"
  p "bbb=#{bbb}"
  p "rest=#{rest}"
end

hash_arg_list_gobble(":something", bbb: 999, m: 987)