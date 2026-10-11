/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.rules;

import org.eclipse.jface.text.TextAttribute;
import org.eclipse.jface.text.rules.DefaultDamagerRepairer;
import org.eclipse.jface.text.rules.RuleBasedScanner;

public class RuleBasedDamagerRepairer
extends DefaultDamagerRepairer {
    public RuleBasedDamagerRepairer(RuleBasedScanner scanner, TextAttribute defaultTextAttribute) {
        super(scanner, defaultTextAttribute);
    }

    public RuleBasedDamagerRepairer(RuleBasedScanner scanner) {
        super(scanner);
    }
}

