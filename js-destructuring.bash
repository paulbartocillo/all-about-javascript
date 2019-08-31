# When you destructure an object and some properties doesn't exists it will return undefined
const settings = {
    speed: 150
}
const { speed, width } = settings; 
console.log(width); # undefined

# Set a default value for destructured objects
const settings = {
    speed: 150
}
const { speed = 750, width = 500 } = settings;
console.log(speed); # 150 - comes from settings object
console.log(width); # 500 - fallback to default

#Careful: null and undefined, default values only replace undefined values not null, false, 0.

const { dogName = 'snickers' } = { dogName: undefined }
console.log(dogName) # 'snickers'

const { dogName = 'snickers' } = { dogName: null }
console.log(dogName) # null

const { dogName = 'snickers' } = { dogName: false }
console.log(dogName) # false

const { dogName = 'snickers' } = { dogName: 0 }
console.log(dogName) # 0

#Combining with destructuring renaming
const person = {
  first: 'John',
  last: 'Doe',
};

const { first: firstName } = person;
console.log(firstName); # John

# Renaming with setting up defaults
const person = { first: 'Wes', last: 'Bos' };
const { middle: middleName = 'Super Rad' } = person;
console.log(middleName); # 'Super Rad'

#Bonus: Spread operators (...) to restructuring
# Combining two objects without duplicating same property fields
const person = { firstname: 'Jane', lastname: 'Doe' };
const personWithMiddle = { firstname: 'Jane', lastname: 'Doe', middlename: 'williams' };
const fullname = {...person, ...personWithMiddle};
console.log(fullname); # { firstname: 'Jane', lastname: 'Doe', middlename: 'williams' }

