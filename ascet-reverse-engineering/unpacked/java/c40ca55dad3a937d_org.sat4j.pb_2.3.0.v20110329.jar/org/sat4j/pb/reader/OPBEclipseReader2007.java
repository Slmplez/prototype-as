/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.VecInt
 *  org.sat4j.reader.ParseFormatException
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.reader;

import java.io.IOException;
import org.sat4j.core.VecInt;
import org.sat4j.pb.IPBSolver;
import org.sat4j.pb.reader.OPBReader2007;
import org.sat4j.reader.ParseFormatException;
import org.sat4j.specs.IVecInt;

public class OPBEclipseReader2007
extends OPBReader2007 {
    private static final long serialVersionUID = 1L;
    private final IVecInt varExplain = new VecInt();

    public OPBEclipseReader2007(IPBSolver iPBSolver) {
        super(iPBSolver);
    }

    protected void beginListOfVariables() {
    }

    protected void endListOfVariables() {
    }

    protected void readVariablesExplanation() throws IOException, ParseFormatException {
        StringBuffer stringBuffer = new StringBuffer();
        this.skipSpaces();
        char c = this.get();
        if (c != 'e') {
            this.putback(c);
            return;
        }
        this.hasVariablesExplanation = true;
        if (this.get() == 'x' && this.get() == 'p' && this.get() == 'l' && this.get() == 'a' && this.get() == 'i' && this.get() == 'n' && this.get() == ':') {
            this.beginListOfVariables();
            while (!this.eof()) {
                this.readIdentifier(stringBuffer);
                this.varExplain.push(this.translateVarToId(stringBuffer.toString()));
                this.skipSpaces();
                c = this.get();
                if (c == ';') break;
                this.putback(c);
            }
        } else {
            throw new ParseFormatException("input format error: 'explain:' expected");
        }
        this.endListOfVariables();
    }

    public IVecInt getListOfVariables() {
        if (this.hasVariablesExplanation) {
            VecInt vecInt = new VecInt();
            this.varExplain.moveTo((IVecInt)vecInt);
            return vecInt;
        }
        return null;
    }
}

