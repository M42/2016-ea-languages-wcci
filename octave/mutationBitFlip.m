function [] = mutationBitFlip (ITERATIONS, MAXLENGTH)
len=16
while ( len<= MAXLENGTH )
	sol = rand(1, len)>.5;
	tic;
	for i=1:ITERATIONS,
		j = randi(len);
		sol(j) = 1 - sol(j);
	end
	t = toc;
	fprintf (1, 'Octave-Vector,%d,%f\n', len, t);
        len = len*2;
endwhile

 
