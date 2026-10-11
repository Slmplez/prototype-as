/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.rules;

import org.eclipse.jface.text.rules.IToken;
import org.eclipse.jface.text.rules.PatternRule;

public class MultiLineRule
extends PatternRule {
    public MultiLineRule(String startSequence, String endSequence, IToken token) {
        this(startSequence, endSequence, token, '\u0000');
    }

    public MultiLineRule(String startSequence, String endSequence, IToken token, char escapeCharacter) {
        this(startSequence, endSequence, token, escapeCharacter, false);
    }

    public MultiLineRule(String startSequence, String endSequence, IToken token, char escapeCharacter, boolean breaksOnEOF) {
        super(startSequence, endSequence, token, escapeCharacter, false, breaksOnEOF);
    }
}

