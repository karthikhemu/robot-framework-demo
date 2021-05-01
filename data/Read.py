import csv
class dd:

    # def read(self,filename):
    #     data = []
    #     with open(filename, 'r') as csvfile:
    #         reader = csv.reader(csvfile)
    #         for row in reader:
    #             data.append(row)
    #     return data

    def read(self,filename,row,column):
        with open(filename) as f:
            test_data = [line for line in csv.reader(f)]
        return test_data[row][column]

    def get_row_counts(self,filename):
        with open(filename, "r") as f:
            reader = csv.reader(f, delimiter=",")
            data = list(reader)
            row_count = len(data)
            return row_count





rd=dd()
filename = "C://development//robot-framework-demo//data//data.csv"
data=rd.get_row_counts(filename)
print(data)

