/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.core.search.matching.JavaSearchPattern;

public abstract class VariablePattern
extends JavaSearchPattern {
    protected boolean findDeclarations = false;
    protected boolean findReferences = false;
    protected boolean readAccess = false;
    protected boolean writeAccess = false;
    protected char[] name;
    public static final int FINE_GRAIN_MASK = 0xF000000;

    public VariablePattern(int patternKind, char[] name, int limitTo, int matchRule) {
        super(patternKind, matchRule);
        this.fineGrain = limitTo & 0xF000000;
        if (this.fineGrain == 0) {
            switch (limitTo & 0xF) {
                case 0: {
                    this.findDeclarations = true;
                    break;
                }
                case 2: {
                    this.readAccess = true;
                    this.writeAccess = true;
                    break;
                }
                case 4: {
                    this.readAccess = true;
                    break;
                }
                case 5: {
                    this.writeAccess = true;
                    break;
                }
                case 3: {
                    this.findDeclarations = true;
                    this.readAccess = true;
                    this.writeAccess = true;
                }
            }
            this.findReferences = this.readAccess || this.writeAccess;
        }
        this.name = this.isCaseSensitive || this.isCamelCase ? name : CharOperation.toLowerCase(name);
    }

    protected boolean mustResolve() {
        return this.findReferences || this.fineGrain != 0;
    }
}

