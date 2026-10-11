using System;

namespace Syncfusion.Windows.Forms.Tools;

public class MaskCustomValidateArgs : EventArgs
{
	private bool handled;

	private bool accepted;

	private int currentIndex;

	private char currentCharacter;

	private char currentMaskCharacter;

	public bool Handled
	{
		get
		{
			return handled;
		}
		set
		{
			handled = value;
		}
	}

	public bool Accepted
	{
		get
		{
			return accepted;
		}
		set
		{
			accepted = value;
		}
	}

	public int CurrentIndex => currentIndex;

	public char CurrentCharacter => currentCharacter;

	public char CurrentMaskCharacter => currentMaskCharacter;

	public MaskCustomValidateArgs()
	{
		handled = false;
	}

	public MaskCustomValidateArgs(bool handled, bool accepted)
	{
		this.handled = handled;
		this.accepted = accepted;
	}

	public MaskCustomValidateArgs(int currentIndex, char currentCharacter, char currentMaskCharacter)
	{
		this.currentIndex = currentIndex;
		this.currentCharacter = currentCharacter;
		this.currentMaskCharacter = currentMaskCharacter;
		accepted = false;
		handled = false;
	}
}
