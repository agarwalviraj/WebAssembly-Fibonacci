(module
	(func $fibonacci (param $index i32)(result i32) (local $fibn i32)(local $fibn1 i32)(local $fibn2 i32) (local $n i32)
		;; set initial values
		i32.const 0
		local.set $fibn 

		i32.const 1
		local.set $fibn1

		i32.const 0
		local.set $fibn2

		local.get $index
		local.set $n

		(block 
			(loop

				local.get $n
				i32.const 0
				i32.eq
				br_if 1

				local.get $fibn1
				local.set $fibn2

				local.get $fibn
				local.set $fibn1

				local.get $fibn1
				local.get $fibn2
				i32.add
				local.set $fibn

				local.get $n
				i32.const 1
				i32.sub
				local.set $n

				br 0
			)
		)
		local.get $fibn
	)
	(export "fibonacci" (func $fibonacci))	
)