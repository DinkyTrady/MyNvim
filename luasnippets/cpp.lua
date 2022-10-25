local p = parse

local start = [[
#include <iostream>
using namespace std;

int main() {
  $1
  return 0;
}
]]

local cout = [[
cout << "${1:write}" ${2:<<endl};
]]

local cin = [[
cin << $1;
]]




return {
  p({
    trig = 'start',
    dscr = 'automatic c++ default',
    priority = 2000
    },start),
  p({
    trig = 'cout',
    dscr = 'write cout without std:: ' 
    },cout),
  p({
    trig = 'cin',
    dscr = 'write cin without str::'
  }, cin),
}
