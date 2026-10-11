/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar21.swcomponent.datatype.datatypes;

import autosar21.swcomponent.datatype.datatypes.PrimitiveType;
import autosar21.swcomponent.datatype.datatypes.Range;
import autosar21.swcomponent.datatype.datatypes.RealTypeEncodingEnum;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface RealType
extends PrimitiveType,
Range {
    public Boolean getAllowNaN();

    public void setAllowNaN(Boolean var1);

    public void unsetAllowNaN();

    public boolean isSetAllowNaN();

    public RealTypeEncodingEnum getEncoding();

    public void setEncoding(RealTypeEncodingEnum var1);

    public void unsetEncoding();

    public boolean isSetEncoding();

    public boolean defallRealsSetRealdefinedbyencoding(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean defvaluesvaluesInRangeintersectallReals(DiagnosticChain var1, Map<Object, Object> var2);
}

