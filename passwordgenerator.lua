local letters = {"a" ,"b" ,"c" ,"d" ,"e", "f", "g" ,"h" ,"i", "j", "k" ,"l" ,"m" ,"n", "o" ,"p" ,"q", "r", "s" ,"t", "u" ,"v", "w" ,"x" ,"y" ,"z","A" ,"B" ,"C" ,"D" ,"E" ,"F" ,"G", "H" ,"I", "J" ,"K", "L" ,"M" ,"N", "O", "P" ,"Q" ,"R" ,"S" ,"T", "U" ,"V" ,"W", "X" ,"Y" ,"Z"}
local numbers = {"1","2","3","4","5","6","7","8","9","0"}
local specials = { "!", "@" ,"#" ,"$" ,"%", "^", "&" ,"*", "(", ")", "_" ,"-" ,"=" ,"+" ,"{" ,"}", "[" ,"]" ,":" ,";" ,"'" , "<", ">" ,",", "." ,"?" ,"/" ,"|" ,"~" ,"`"}

local charactersLists = {
    letters,
    numbers,
    specials
}


print("Quantos caracteres deseja na senha? ")
local length = io.read("*n")

local password = ""
for i = 1, length, 1 do

    -- Gett list
    local listIndex = math.random(#charactersLists)
    local list = charactersLists[listIndex]
    
    -- Get character
    local characterIndex = math.random(#charactersLists)
    local char = list[characterIndex]

    --append character
    password = password ..  char
end

print("Sua senha:")
print(password)