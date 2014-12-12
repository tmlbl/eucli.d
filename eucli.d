import std.stdio, std.conv;


void main(string[] args)
{
	int m;
	int n;
	try {
		m = to!int(args[1]);
		n = to!int(args[2]);
	} catch {
		writeln("error! usage: ./eucli 18 12");
		return;
	}
	writeln(euclid(m, n));
}

// Euclid's algorithm for greatest
// common divisor
int euclid(int m, int n)
{
	int r = m % n;
	if (r == 0) {
		return n;
	}
	m = n;
	n = r;
	return euclid(m, n);
}

unittest
{
	int result = euclid(18, 12);
	assert(result == 6);
}

