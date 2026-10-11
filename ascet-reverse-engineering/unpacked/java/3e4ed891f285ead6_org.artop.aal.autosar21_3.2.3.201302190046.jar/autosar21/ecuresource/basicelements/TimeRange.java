/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar21.ecuresource.basicelements;

import autosar21.genericstructure.infrastructure.ARObject;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface TimeRange
extends ARObject {
    public Double getMax();

    public void setMax(Double var1);

    public void unsetMax();

    public boolean isSetMax();

    public Double getMin();

    public void setMin(Double var1);

    public void unsetMin();

    public boolean isSetMin();

    public Double getTypical();

    public void setTypical(Double var1);

    public void unsetTypical();

    public boolean isSetTypical();

    public boolean _mintypicalandtypicalmax(DiagnosticChain var1, Map<Object, Object> var2);
}

