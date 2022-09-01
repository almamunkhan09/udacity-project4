def my_function():
  return "Hello"




with open('./output_txt_files/docker_out.txt', 'a',encoding='utf-8') as f:
    for line in ["1","2"]:
        f.write(my_function())
        f.write('\n')


