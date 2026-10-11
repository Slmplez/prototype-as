/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IAdapterManager
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.ui.databinding;

import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IAdapterManager;
import org.eclipse.core.runtime.Platform;
import org.eclipse.ui.ISelectionService;
import org.eclipse.ui.databinding.WorkbenchProperties;
import org.eclipse.ui.services.IServiceLocator;

public class WorkbenchObservables {
    static /* synthetic */ Class class$0;

    public static IObservableValue observeDetailAdaptedValue(IObservableValue master, Class adapter) {
        return WorkbenchObservables.observeDetailAdaptedValue(master, adapter, Platform.getAdapterManager());
    }

    static IObservableValue observeDetailAdaptedValue(IObservableValue master, Class adapter, IAdapterManager adapterManager) {
        return WorkbenchProperties.adaptedValue(adapter, adapterManager).observeDetail(master);
    }

    public static IObservableValue observeAdaptedSingleSelection(IServiceLocator locator, Class targetType) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.ISelectionService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ISelectionService selectionService = (ISelectionService)locator.getService(clazz);
        Assert.isNotNull((Object)selectionService);
        return WorkbenchProperties.singleSelection(null, true).value(WorkbenchProperties.adaptedValue(targetType)).observe((Object)selectionService);
    }
}

