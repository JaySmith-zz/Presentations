using System.IO;
using Microsoft.Build.Framework;
using Microsoft.Build.Utilities;

namespace Demo2.Build
{
    public class StringReplace : Task
    {
        [Required]
        public string Filename { get; set; }

        [Required]
        public string SearchValue { get; set; }

        public string ReplaceValue { get; set; }

        public override bool Execute()
        {
            string contents = File.ReadAllText(Filename);

            contents = contents.Replace(SearchValue, ReplaceValue);

            File.WriteAllText(Filename, contents);

            return true;
        }
    }
}