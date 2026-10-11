/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.pdustructure;

import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.system.pdustructure.Multiplexer;
import autosar21.system.pdustructure.SignalPosition;
import autosar21.system.pdustructure.SubPDU;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PDUType
extends ARElement {
    public EList<SignalPosition> getIncludedSignals();

    public Multiplexer getMultiplexerDynamicPart();

    public void setMultiplexerDynamicPart(Multiplexer var1);

    public SubPDU getMultiplexerStaticPart();

    public void setMultiplexerStaticPart(SubPDU var1);

    public Boolean getNeedsUpdateIndication();

    public void setNeedsUpdateIndication(Boolean var1);

    public void unsetNeedsUpdateIndication();

    public boolean isSetNeedsUpdateIndication();

    public Integer getPDULength();

    public void setPDULength(Integer var1);

    public void unsetPDULength();

    public boolean isSetPDULength();
}

