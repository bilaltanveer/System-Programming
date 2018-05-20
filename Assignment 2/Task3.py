def Find2d(li):
    matrix=[
            [1,2,3,4,11,22,33,44],
            [1, 2, 3, 4, 11, 22, 33, 44],
            [5, 6, 7, 8, 55, 66, 77, 88],
            [10, 20, 30, 40, 110, 220, 330, 440],
            [4, 3, 2, 1, 12, 21, 31, 14],
            [0, 2, 4, 7, 10, 22, 34, 47],
            [0, 1, 3, 5, 13, 25, 31, 45],
            [1, 2, 3, 4, 9, 8, 7, 5]
            ]
    for row in range(0,7):
        for col in range(0,7):
            if matrix[row][col]==li[0][0]:
                if matrix[row][col+1]==li[0][1]:
                   if matrix[row+1][col] == li[1][0]:
                      if matrix[row+1][col+1] == li[1][1]:
                          print("Matrix found at row:",row, "and coloumn: ", col)


def main():

    Find2d(li=[[34,47],[31,45]])


if __name__ == "__main__":
	main()
