using System;
using System.Media;
using System.IO;

namespace CyberSafetyBotGUI_Fixed
{
    public class AudioService
    {
        public void PlayGreeting()
        {
            try
            {
                string[] possiblePaths = {
                    "Recording2.wav",
                    @"Resources\Recording2.wav",
                    AppDomain.CurrentDomain.BaseDirectory + "Recording2.wav",
                    AppDomain.CurrentDomain.BaseDirectory + @"Resources\Recording2.wav"
                };

                string audioPath = null;

                foreach (string path in possiblePaths)
                {
                    if (File.Exists(path))
                    {
                        audioPath = path;
                        break;
                    }
                }

                if (audioPath != null)
                {
                    using (SoundPlayer player = new SoundPlayer(audioPath))
                    {
                        player.PlaySync();
                    }
                }
            }
            catch (Exception)
            {
                // Silent fail
            }
        }
    }
}