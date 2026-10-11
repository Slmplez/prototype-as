/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar3x.ecuresource.basicelements;

import autosar3x.genericstructure.infrastructure.ARObject;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface FrequencyRange
extends ARObject {
    public Double getMaxFrequency();

    public void setMaxFrequency(Double var1);

    public void unsetMaxFrequency();

    public boolean isSetMaxFrequency();

    public Double getMinFrequency();

    public void setMinFrequency(Double var1);

    public void unsetMinFrequency();

    public boolean isSetMinFrequency();

    public Double getTypicalFrequency();

    public void setTypicalFrequency(Double var1);

    public void unsetTypicalFrequency();

    public boolean isSetTypicalFrequency();

    public boolean _minFrequencytypicalFrequencyandtypicalFrequencymaxFrequency(DiagnosticChain var1, Map<Object, Object> var2);
}

