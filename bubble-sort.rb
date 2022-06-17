def bubble_sort(arr)
  loop_counter = 1
  length = arr.length - 1
  keep_going = true

  while(keep_going) do
    temp = nil
    for i in (0..(length - loop_counter))
      if arr[i] > arr[i + 1]
        temp = arr[i]
        arr[i] = arr[i + 1]
        arr[i + 1] = temp
      end
    end
    keep_going = false if temp == nil
    loop_counter += 1
  end
  arr
end

int_array = [4,3,78,2,0,2]

p bubble_sort(int_array)