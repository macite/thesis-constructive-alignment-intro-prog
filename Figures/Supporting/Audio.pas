/// Loads the `SoundEffect` from the supplied filename. The 
/// sound will be loaded from the Resources/sounds folder
/// unless a full path to the file is passed in...
///
/// @param filename name of the sound effect file to load. 
///
/// @lib
///
/// @class SoundEffect
/// @constructor
/// @csn initFromFile:%s
function LoadSoundEffect(filename: String): SoundEffect;

/// This version of PlaySoundEffect allows you to indicate
/// the number of times the sound effect is repeated.
/// ...
///
/// @lib PlaySoundEffectA(effect, loops, 1.0)
/// @uname PlaySoundEffectWithLoop
/// @sn playSoundEffect:%s looped:%s
///
/// @class SoundEffect
/// @overload Play PlayWithLoops
/// @csn playLooped:%s
procedure PlaySoundEffect(effect: SoundEffect; loops: Longint);
