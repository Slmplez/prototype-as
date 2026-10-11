/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text.rules;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.rules.ICharacterScanner;
import org.eclipse.jface.text.rules.IToken;
import org.eclipse.jface.text.rules.IWordDetector;
import org.eclipse.jface.text.rules.SingleLineRule;

public class WordPatternRule
extends SingleLineRule {
    protected IWordDetector fDetector;
    private StringBuffer fBuffer = new StringBuffer();

    public WordPatternRule(IWordDetector detector, String startSequence, String endSequence, IToken token) {
        this(detector, startSequence, endSequence, token, '\u0000');
    }

    public WordPatternRule(IWordDetector detector, String startSequence, String endSequence, IToken token, char escapeCharacter) {
        super(startSequence, endSequence, token, escapeCharacter);
        Assert.isNotNull((Object)detector);
        this.fDetector = detector;
    }

    protected boolean endSequenceDetected(ICharacterScanner scanner) {
        this.fBuffer.setLength(0);
        int c = scanner.read();
        while (this.fDetector.isWordPart((char)c)) {
            this.fBuffer.append((char)c);
            c = scanner.read();
        }
        scanner.unread();
        if (this.fBuffer.length() >= this.fEndSequence.length) {
            int i = this.fEndSequence.length - 1;
            int j = this.fBuffer.length() - 1;
            while (i >= 0) {
                if (this.fEndSequence[i] != this.fBuffer.charAt(j)) {
                    this.unreadBuffer(scanner);
                    return false;
                }
                --i;
                --j;
            }
            return true;
        }
        this.unreadBuffer(scanner);
        return false;
    }

    protected void unreadBuffer(ICharacterScanner scanner) {
        this.fBuffer.insert(0, this.fStartSequence);
        int i = this.fBuffer.length() - 1;
        while (i > 0) {
            scanner.unread();
            --i;
        }
    }
}

