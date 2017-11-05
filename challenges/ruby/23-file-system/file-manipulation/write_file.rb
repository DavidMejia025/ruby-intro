text = ARGV[ARGV.index('--phrase') + 1]

file = File.open('soy_nuevo.md', 'a+')  
file.puts(text)

