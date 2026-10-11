/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar3x.swcomponent.datatype.datatypes;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.datatype.datatypes.ARLimit;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Range
extends ARObject {
    public ARLimit getLowerLimit();

    public void setLowerLimit(ARLimit var1);

    public ARLimit getUpperLimit();

    public void setUpperLimit(ARLimit var1);

    public boolean defvaluesInRangeSetFloat(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean lowerLimitupperLimit(DiagnosticChain var1, Map<Object, Object> var2);
}

