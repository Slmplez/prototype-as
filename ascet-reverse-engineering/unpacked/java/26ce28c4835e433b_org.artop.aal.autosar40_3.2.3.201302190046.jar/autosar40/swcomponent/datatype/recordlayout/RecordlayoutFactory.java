/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.datatype.recordlayout;

import autosar40.swcomponent.datatype.recordlayout.RecordlayoutPackage;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayout;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayoutGroup;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayoutGroupContent;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayoutV;
import autosar40.swcomponent.datatype.recordlayout.impl.RecordlayoutFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface RecordlayoutFactory
extends EFactory {
    public static final RecordlayoutFactory eINSTANCE = RecordlayoutFactoryImpl.init();

    public SwRecordLayout createSwRecordLayout();

    public SwRecordLayoutGroup createSwRecordLayoutGroup();

    public SwRecordLayoutGroupContent createSwRecordLayoutGroupContent();

    public SwRecordLayoutV createSwRecordLayoutV();

    public RecordlayoutPackage getRecordlayoutPackage();
}

