// Phase 1

// Prints in block twice because var x outside is changed in if loop
function mysteryScoping1() {
  var x = 'out of block';

  if (true) {
    var x = 'in block';
    console.log(x);
  }

  console.log(x);
}

// mysteryScoping1();
// in block printed first, then out of block
// since out of block is const it wouldnt be changed in in block
function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x);
}

// mysteryScoping2();
// var cannot rewrite const, and const already declared as x
function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

// mysteryScoping3();
// inblock access x in if loop, outer console log acces x in outer scope.
function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}

// mysteryScoping4();
//delcaring same variable on the outer scope twice. won't run
function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  let x = 'out of block again';
  console.log(x);
}

// mysteryScoping5();
