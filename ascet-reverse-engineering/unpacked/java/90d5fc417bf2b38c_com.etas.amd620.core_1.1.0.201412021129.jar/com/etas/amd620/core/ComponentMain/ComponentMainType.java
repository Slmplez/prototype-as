/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.Asap2ItemType;
import com.etas.amd620.core.ComponentMain.AtomicSoftwareComponentT;
import com.etas.amd620.core.ComponentMain.ComponentT;
import com.etas.amd620.core.ComponentMain.ContainerType;
import com.etas.amd620.core.ComponentMain.EnumerationType;
import com.etas.amd620.core.ComponentMain.GenericComponentT;
import com.etas.amd620.core.ComponentMain.ImageType;
import com.etas.amd620.core.ComponentMain.ItemBaseT;
import com.etas.amd620.core.ComponentMain.ModeGroupType;
import com.etas.amd620.core.ComponentMain.SignalType;
import org.eclipse.emf.ecore.EObject;
import org.w3._2000._09.xmldsig.SignatureType;

public interface ComponentMainType
extends EObject {
    public ComponentT getComponent();

    public void setComponent(ComponentT var1);

    public GenericComponentT getGenericComponent();

    public void setGenericComponent(GenericComponentT var1);

    public AtomicSoftwareComponentT getAtomicSoftwareComponent();

    public void setAtomicSoftwareComponent(AtomicSoftwareComponentT var1);

    public EnumerationType getEnumeration();

    public void setEnumeration(EnumerationType var1);

    public ModeGroupType getModeGroup();

    public void setModeGroup(ModeGroupType var1);

    public ImageType getImage();

    public void setImage(ImageType var1);

    public SignalType getSignal();

    public void setSignal(SignalType var1);

    public Asap2ItemType getAsap2Item();

    public void setAsap2Item(Asap2ItemType var1);

    public ContainerType getContainer();

    public void setContainer(ContainerType var1);

    public ItemBaseT getFolder();

    public void setFolder(ItemBaseT var1);

    public SignatureType getSignature();

    public void setSignature(SignatureType var1);

    public String getSchemaVersion();

    public void setSchemaVersion(String var1);

    public String getToolVersion();

    public void setToolVersion(String var1);
}

