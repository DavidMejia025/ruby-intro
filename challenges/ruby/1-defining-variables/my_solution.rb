 #Defining Variables
 # 1.asignar la variable first_name que es igual a Angie
 # 2.asignar la variable last_name que es igual a Vanegas
 # 3.asignar la variable age que es igual a 31
 # 4.guardar
 # 4.correr el archivo en rspec

# Pruebas NO LAS BORRES


describe 'first_name' do
  it "is defined as a local variable" do
    expect(defined?(first_name)).to eq 'local-variable'
  end

  it "is a String" do
    expect(first_name).to be_a String
  end
end

describe 'last_name' do
  it "is defined as a local variable" do
    expect(defined?(last_name)).to eq 'local-variable'
  end

  it "be a String" do
    expect(last_name).to be_a String
  end
end

describe 'age' do
  it "is defined as a local variable" do
    expect(defined?(age)).to eq 'local-variable'
  end

  it "is an integer" do
    expect(age).to be_a Fixnum
  end
end
