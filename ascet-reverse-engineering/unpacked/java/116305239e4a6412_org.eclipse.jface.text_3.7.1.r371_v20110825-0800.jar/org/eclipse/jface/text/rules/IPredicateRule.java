/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.rules;

import org.eclipse.jface.text.rules.ICharacterScanner;
import org.eclipse.jface.text.rules.IRule;
import org.eclipse.jface.text.rules.IToken;

public interface IPredicateRule
extends IRule {
    public IToken getSuccessToken();

    public IToken evaluate(ICharacterScanner var1, boolean var2);
}

