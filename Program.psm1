using namespace System
using namespace System.Windows.Forms

using module '.\Form1.psm1'

class Program
{
    [STAThread()]
    static [void] Main()
    {
        [Application]::EnableVisualStyles()
        try
        {
            [Application]::SetCompatibleTextRenderingDefault($false)
        }
        catch [InvalidOperationException] {}
        [Application]::Run([Form1]::new())
    }
}
