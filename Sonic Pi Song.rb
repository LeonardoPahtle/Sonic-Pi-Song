# Welcome to Sonic Pi v3.1

#First Song Variables
patrick = "C:/Users/leonardo_quechol/Downloads/Patrick Explaining Wumbo.wav"
Patrick = "C:/Users/leonardo_quechol/Downloads/Three Hours Later (Patrick) SpongeBob Time Card #23.wav"
Hi = "C:/Users/leonardo_quechol/Downloads/Hi How Are Ya - Spongebob Sound Effect (HD).wav"
What = "C:/Users/leonardo_quechol/Downloads/You what! SpongeBob sound effect.wav"
Leg = "C:/Users/leonardo_quechol/Downloads/spongebob my leg sound effect.wav"
Evil = "C:/Users/leonardo_quechol/Downloads/Mermaid man - evil.wav"
Note = [:E3, :E4, :B3, :E4]
x = 0.2
i = 0

#Second Song Variables
Doodle = "C:/Users/leonardo_quechol/Downloads/Doodlebob sound effect.wav"
Doodle2 = "C:/Users/leonardo_quechol/Downloads/Doodlebob sound effect2.wav"
Backgroundnotes = [:B2, :Fs2, :D2, :B2, :D3, :D3, :B2, :Fs2, :D2, :D3, :Fs3, :B2]
sleeps = [1.5, 1.5, 1, 1.5, 1.5, 1, 1.5, 1.5, 1, 1.5, 1.5, 1]
a = 0.65
b = 0.3
c = 0
d = 1

#First Song Defined Functions
define :amp do
  if x < 1
    print "no"
  else
    x = 1
  end
end

#Second Song Defined Functions
define :check do
  if d < 0.01
    stop
  else
    print "no"
  end
end

define :jellyfishnotes do |n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14|
  play n1
  play n2
  sleep 0.75
  play n3
  play n4
  sleep 0.5
  play n5
  play n6
  sleep 0.25
  play n7
  play n8
  sleep 0.5
  play n9
  play n10
  sleep 0.5
  play n11
  play n12
  sleep 0.5
  play n13
  play n14
  sleep 1
end

define :jellyfishnotes2 do
  play :Fs3
  play :B3
  sleep 0.75
  play :Fs3
  play :B3
  sleep 0.5
  play :E3
  play :A3
  sleep 0.25
  play :Fs3
  play :B3
  sleep 0.5
  play :B3
  sleep 0.5
  play :B3
  sleep 0.5
  play :Fs3
  sleep 0.5
  play :A3
  sleep 0.5
end

define :jellyfishnotes3 do
  play :Fs3
  play :B3
  sleep 0.75
  play :Fs3
  play :B3
  sleep 0.5
  play :E3
  play :A3
  sleep 0.25
  play :Fs3
  play :B3
  sleep 0.5
  play :B3
  play :Fs3
  sleep 0.5
  play :B3
  play :Fs3
  sleep 0.5
  play :D3
  play :A3
  sleep 0.5
  play :Fs3
  play :B3
  sleep 0.5
end

#First Song
use_bpm 136
use_synth :piano

#Intro
sample patrick
sleep 64

#Background Notes
live_loop:Notes do
  14.times do
    4.times do
      play Note[i], amp: x
      print x
      sleep 1
      i = i + 1
      x = x + 0.1
      amp
    end
    i = 0
  end
  stop
end

#Randomization
live_loop:Random do
  sleep 16
  4.times do
    sleep 3
    sample choose([Evil, Hi, What, Leg, What])
    sleep 5
  end
  stop
end

#Song
sleep 1
play:E4, amp: x
play:Gs4, amp: x
sleep 2
play:E5, amp: x
play:Gs4, amp: x
sleep 1
play:E4, amp: x
sleep 1
play:E5, amp: x
play:Gs4, amp: x
sleep 2
play:E5, amp: x
play:Gs4, amp: x
sleep 2
play:E5, amp: x
play:Gs4, amp: x
play:B4, amp: x
sleep 1
play:B4, amp: x
sleep 1
play:Gs4, amp: x
play:E5, amp: x
sleep 2
play:E5, amp: x
play:Gs4, amp: x
play:B4, amp: x
sleep 1
play:B4, amp: x
sleep 1
play:Gs4, amp: x
play:E5, amp: x
sleep 1
amp
play:B4, amp: x
sleep 0.75
play:As4, amp: x
sleep 0.25
play:Gs4, amp: x
play:B4, amp: x
sleep 0.75
play:Cs5, amp: x
sleep 0.25
play:B4, amp: x
sleep 1
play:Gs4, amp: x
play:E5, amp: x
sleep 2
play:E5, amp: x
play:Gs4, amp: x
play:B4, amp: x
sleep 1
play:B4, amp: x
sleep 1
play:Gs4, amp: x
play:E5, amp: x
sleep 1
play:B4, amp: x
sleep 0.75
play:As4, amp: x
sleep 0.25
play:Gs4, amp: x
play:B4, amp: x
sleep 0.75
play:Cs5, amp: x
sleep 0.25
play:B4, amp: x
sleep 1
play:Gs4, amp: x
play:E5, amp: x
sleep 2
play:E5, amp: x
play:Gs4, amp: x
play:B4, amp: x
sleep 1
play:B4, amp: x
sleep 1
play:Gs4, amp: x
play:E5, amp: x
sleep 1
play:B4, amp: x
sleep 0.75
play:As4, amp: x
sleep 0.25
play:Gs4, amp: x
play:B4, amp: x
sleep 0.75
play:Cs5, amp: x
sleep 0.25
play:B4, amp: x
sleep 1
play:Gs4, amp: x
play:E4, amp: x
play:E5, amp: x
sleep 2
play:Gs4, amp: x
play:E5, amp: x
sleep 2
play:Gs4, amp: x
play:E5, amp: x
sleep 1
play:B4, amp: x
sleep 0.75
play:As4, amp: x
sleep 0.25
play:Gs4, amp: x
play:B4, amp: x
sleep 0.75
play:Cs5, amp: x
sleep 0.25
play:B4, amp: x
sleep 1
play:Gs4, amp: x
play:E5, amp: x
sleep 2
play:E5, amp: x
play:Gs4, amp: x
play:B4, amp: x
sleep 1
play:B4, amp: x
sleep 1
play:Gs4, amp: x
play:E5, amp: x
sleep 1
play:B4, amp: x
sleep 0.75
play:As4, amp: x
sleep 0.25
play:Gs4, amp: x
play:B4, amp: x
sleep 0.75
play:Cs5, amp: x
sleep 0.25
play:B4, amp: x
sleep 1
play:Gs4, amp: x
play:E5, amp: x
sleep 0.5
play:B4, amp: x
sleep 1.5
play:E5, amp: x
play:B4, amp: x
play:Gs4, amp: x
sleep 1
play:E5, amp: x
play:B4, amp: x
play:Gs4, amp: x
sleep 2

live_loop:Notes2 do
  1.times do
    play:Ds3
    play:Gs3
    play:B3
    play:Ds4
    sleep 1
    play:Ds3
    play:Gs3
    play:B3
    play:Ds4
    sleep 1
    play:Ds3
    play:Gs3
    play:B3
    play:Ds4
    sleep 2
    play:E3
    sleep 1
    play:B3
    play:E4
    sleep 1
    play:B3
    sleep 1
    play:E4
    sleep 1
    play:E3
    play:A3
    play:Cs4
    play:E4
    sleep 1
    play:E3
    play:A3
    play:C4
    sleep 1
    play:E3
    play:A3
    play:Cs4
    sleep 2
    play:E3
    sleep 1
    play:B3
    play:E4
    sleep 1
    play:B3
    sleep 1
    play:E4
    sleep 1
    play:B3
    sleep 1
    play:Cs4
    sleep 3
    play:E3
    sleep 1
    play:B3
    play:E4
    sleep 1
    play:B3
    sleep 1
    play:E4
    sleep 1
    play:E3
    sleep 4
  end
  stop
end

play:B4
play:Fs5
sleep 0.75
play:Gs5
sleep 0.25
play:B4
play:Fs5
sleep 0.75
play:Gs5
sleep 0.25
play:Gs4
play:B4
play:Fs5
sleep 2
play:Gs4
play:B4
play:Fs5
sleep 1
play:Gs4
play:B4
play:E5
sleep 1
play:B4
play:E5
sleep 1
play:G4
play:E5
sleep 0.5
play:Fs5
sleep 0.5
play:A4
play:E5
play:G5
sleep 1
play:A4
play:E5
play:G5
sleep 1
play:A4
play:E5
play:G5
sleep 0.5
play:Fs5
sleep 0.5
play:E5
sleep 0.5
play:B4
sleep 0.5
play:B4
sleep 0.75
play:As4
sleep 0.25
play:Gs4
play:B4
sleep 0.75
play:Cs5
sleep 0.25
play:B4
sleep 1
play:Gs4
sleep 1
play:B4
sleep 0.75
play:As4
sleep 0.25
play:A4
play:Fs5
sleep 0.75
play:Cs5
sleep 0.25
play:B4
sleep 1
play:A4
play:Ds5
play:Fs5
sleep 1
play:Ds5
sleep 1
play:Gs4
play:B4
play:E5
sleep 1
play:B4
sleep 1
play:Gs4
play:E5
sleep 3

#Transition
use_bpm 120

live_loop:Transition do
  use_synth :fm
  5.times do
    play:F3, sustain: 4
    play:F2, sustain: 4
    sleep 4
  end
  1.times do
    play:F3, sustain: 2
    play:F2, sustain: 2
    sleep 2
  end
  stop
end

live_loop:Transition2 do
  sleep 8
  3.times do
    use_synth :piano
    play:E4
    sleep 0.25
    play:E4
    sleep 0.25
    play:E4
    sleep 0.25
    play:E4
    sleep 0.75
    play:E4
    sleep 0.25
    play:E4
    sleep 0.25
    play:E4
    sleep 0.25
    play:E4
    sleep 1.75
  end
  stop
end

#Second Song

#Intro Notes
use_synth :piano
sleep 20
sleep 2.5
play:E3
sleep 0.5
play:Fs3
sleep 0.5
play:A3
sleep 0.5

#Main Song
live_loop:Jellyfish do
  4.times do
    jellyfishnotes2
    jellyfishnotes :Fs3, :B3, :Fs3, :B3, :E3, :A3, :Fs3, :B3, :E3, :A3, :Fs3, :A3, :B3, :B3
    jellyfishnotes3
    jellyfishnotes :A3, :D4, :A3, :D4, :E3, :A3, :A3, :D4, :A3, :D4, :A3, :D4, :Fs3, :B3
  end
  stop
end

#Background Notes
live_loop:BackgroundNotes do
  use_synth :piano
  4.times do
    12.times do
      play Backgroundnotes[c], sustain: 1
      sleep sleeps[c]
      c = c + 1
    end
    c = 0
  end
  stop
end

#Randomization
live_loop:Random2 do
  7.times do
    sleep 7.5
    sample choose([Doodle, Doodle2, What, Evil, Leg])
    sleep 0.5
  end
  stop
end

#Outro
live_loop:BackgroundNotes2 do
  d = 1
  sleep 64
  use_synth :piano
  2.times do
    12.times do
      play Backgroundnotes[c], sustain: 1, amp: d
      sleep sleeps[c]
      c = c + 1
      d = d - 0.04
      check
    end
    c = 0
  end
  stop
end