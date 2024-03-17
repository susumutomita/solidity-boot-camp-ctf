# Define two 2x3 matrices
a = [[1, 2, 3], [4, 5, 6]]
b = [[10, 20, 30], [40, 50, 60]]

# Create an empty 2x3 matrix for the result
c = [[0, 0, 0], [0, 0, 0]]

# Add the elements of a and b
c[0][0] = a[0][0] + b[0][0]
c[0][1] = a[0][1] + b[0][1]
c[0][2] = a[0][2] + b[0][2]
c[1][0] = a[1][0] + b[1][0]
c[1][1] = a[1][1] + b[1][1]
c[1][2] = a[1][2] + b[1][2]

# Print the resulting matrix
for row in c:
    print(row)
