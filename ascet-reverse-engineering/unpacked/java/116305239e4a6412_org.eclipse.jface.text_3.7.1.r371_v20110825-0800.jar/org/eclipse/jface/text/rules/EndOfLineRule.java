/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.rules;

import org.eclipse.jface.text.rules.IToken;
import org.eclipse.jface.text.rules.SingleLineRule;

public class EndOfLineRule
extends SingleLineRule {
    public EndOfLineRule(String startSequence, IToken token) {
        this(startSequence, token, '\u0000');
    }

    public EndOfLineRule(String startSequence, IToken token, char escapeCharacter) {
        super(startSequence, null, token, escapeCharacter, true);
    }

    public EndOfLineRule(String startSequence, IToken token, char escapeCharacter, boolean escapeContinuesLine) {
        super(startSequence, null, token, escapeCharacter, true, escapeContinuesLine);
    }
}

