/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.measurementandcalibration.measurementproperty;

import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.SwVariableRefProxy;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref.RecordElementRefRecordElement;

public interface RecordElementRef
extends SwVariableRefProxy {
    public RecordElementRefRecordElement getRecordElement();

    public void setRecordElement(RecordElementRefRecordElement var1);
}

