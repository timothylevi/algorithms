def matrix_region_sum(matrix, top_left_coords, bottom_right_coords)
  total_sum = 0

  (top_left_coords[0]..bottom_right_coords[0]).each do |row_idx|
    (top_left_coords[1]..bottom_right_coords[1]).each do |col_idx|
      total_sum += matrix[row_idx][col_idx]
    end
  end

  total_sum
end