/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.reader.ParseFormatException
 */
package org.sat4j.pb.reader;

import java.io.IOException;
import org.sat4j.pb.IPBSolver;
import org.sat4j.pb.reader.OPBReader2005;
import org.sat4j.reader.ParseFormatException;

public class OPBReader2006
extends OPBReader2005 {
    private static final long serialVersionUID = 1L;

    public OPBReader2006(IPBSolver iPBSolver) {
        super(iPBSolver);
    }

    protected void readTerm(StringBuffer stringBuffer, StringBuffer stringBuffer2) throws IOException, ParseFormatException {
        this.readInteger(stringBuffer);
        this.skipSpaces();
        if (!this.readIdentifier(stringBuffer2)) {
            throw new ParseFormatException("identifier expected");
        }
    }
}

