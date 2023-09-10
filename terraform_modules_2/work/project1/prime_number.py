def prime_number_finder(num):
    result  = [2,3]
    for i in range(4,num+1):
        for j in range(4,i):
            if i % j  == 0:
                break
        else:
            result.append(i)
    return result

# res = prime_number_finder(100)
if __name__ == "__main__":
    res = prime_number_finder(100)
    print(res)


# try:

# except:

# else:

# finally:


