-- This program wraps the LAME encoder with my standard options.
-- Dr Owain Kenway

-- Where it is distributed, it is done so under a 4 clause,
-- BSD-style license (see LICENSE.txt)

module Main where

import System.IO
import System.Process

main :: IO ()
main = do

-- Print banner.
	putStrLn " "
	putStrLn "Owain Kenway's LAME wrapper version (i)"
	putStrLn "======================================="
	putStrLn " "

-- Get track info.
	fname <- getInput "Input file: "
	songname <- getInput "Song title: "
	artist <- getInput "Artist: "
	albumname <- getInput "Album title: "
	genre <- getInput "Genre: "

-- Create LAME command line.
	let lamecmd = "lame -b 192 -B 192 --tt \"" ++ songname ++ "\" --ta \"" ++ artist ++ "\" --tl \"" ++ albumname ++ "\" --tg \"" ++ genre ++ "\" \"" ++ fname ++ "\""

-- Print command-line (for debug) and run LAME.
-- Note that we have to explicitly wait for LAME to finish.
	putStrLn " "
	putStrLn lamecmd
	putStrLn " "
	temp <- runCommand lamecmd
	waitForProcess temp

-- And we're done.
	putStrLn " "
	putStrLn "Exiting..."

-- This is a little helper function get make sure stdout gets flushed.
getInput :: String -> IO String
getInput prompt = do
	putStr prompt
	hFlush stdout
	getLine

