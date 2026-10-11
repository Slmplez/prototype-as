/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar21.swcomponent.datatype.datatypes;

import autosar21.swcomponent.datatype.datatypes.PrimitiveType;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface CharType
extends PrimitiveType {
    public String getEncoding();

    public void setEncoding(String var1);

    public void unsetEncoding();

    public boolean isSetEncoding();

    public boolean TBDnamingconventionforencoding(DiagnosticChain var1, Map<Object, Object> var2);
}

