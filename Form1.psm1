using namespace System
using namespace System.ComponentModel
using namespace System.Drawing
using namespace System.Windows.Forms

class Form1 : Form
{
    Form1()
    {
        $this.InitializeComponent()
    }

    [void] btnClickThis_Click([object] $sender, [EventArgs] $e)
    {
        $this.lblHelloWorld.Text = "Hello World!"
    }

    [IContainer] $components = $null

    [void] Dispose([bool] $disposing)
    {
        if ($disposing -and ($this.components -ne $null))
        {
            $this.components.Dispose()
        }
        ([Form]$this).Dispose($disposing)
    }

    [void] InitializeComponent()
    {
        $this.btnClickThis = [Button]::new()
        $this.lblHelloWorld = [Label]::new()
        $this.SuspendLayout()
        # 
        # btnClickThis
        # 
        $this.btnClickThis.Font = [Font]::new("Microsoft Sans Serif", [float]8.0)
        $this.btnClickThis.Location = [Point]::new(370, 210)
        $this.btnClickThis.Name = "btnClickThis"
        $this.btnClickThis.Size = [Size]::new(78, 24)
        $this.btnClickThis.TabIndex = 0
        $this.btnClickThis.Text = "Click this"
        $this.btnClickThis.UseVisualStyleBackColor = $true
        $this.btnClickThis.add_Click([Form1].GetMethod("btnClickThis_Click").CreateDelegate([EventHandler], $this))
        # 
        # lblHelloWorld
        # 
        $this.lblHelloWorld.AutoSize = $true
        $this.lblHelloWorld.Font = [Font]::new("Microsoft Sans Serif", [float]8.0)
        $this.lblHelloWorld.Location = [Point]::new(370, 253)
        $this.lblHelloWorld.Name = "lblHelloWorld"
        $this.lblHelloWorld.Size = [Size]::new(51, 17)
        $this.lblHelloWorld.TabIndex = 1
        $this.lblHelloWorld.Text = "Label1"
        # 
        # Form1
        # 
        $this.AutoScaleDimensions = [SizeF]::new([float]8.0, [float]15.0)
        $this.AutoScaleMode = [AutoScaleMode]::Font
        $this.ClientSize = [Size]::new(800, 450)
        $this.Controls.Add($this.lblHelloWorld)
        $this.Controls.Add($this.btnClickThis)
        $this.Name = "Form1"
        $this.Text = "Form1"
        $this.ResumeLayout($false)
        $this.PerformLayout()
    }

    [Button] $btnClickThis
    [Label] $lblHelloWorld
}
