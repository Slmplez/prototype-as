/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.rules;

import org.eclipse.jface.text.rules.ICharacterScanner;
import org.eclipse.jface.text.rules.IToken;

public interface IRule {
    public IToken evaluate(ICharacterScanner var1);
}

