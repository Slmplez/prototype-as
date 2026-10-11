/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.applicationattributes;

import autosar21.swcomponent.applicationattributes.SenderReceiverAnnotation;

public interface ReceiverAnnotation
extends SenderReceiverAnnotation {
    public Double getSignalAge();

    public void setSignalAge(Double var1);

    public void unsetSignalAge();

    public boolean isSetSignalAge();
}

