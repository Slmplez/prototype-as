/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.edit.provider.ComposedAdapterFactory
 *  org.eclipse.emf.edit.provider.ComposedAdapterFactory$Descriptor$Registry
 *  org.eclipse.emf.edit.provider.IItemLabelProvider
 *  org.eclipse.emf.edit.provider.ReflectiveItemProviderAdapterFactory
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.emf.validation.internal.util;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.edit.provider.ComposedAdapterFactory;
import org.eclipse.emf.edit.provider.IItemLabelProvider;
import org.eclipse.emf.edit.provider.ReflectiveItemProviderAdapterFactory;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TextUtils {
    private static AdapterFactory defaultFactory = new ReflectiveItemProviderAdapterFactory();
    private static AdapterFactory factory = new ComposedAdapterFactory(ComposedAdapterFactory.Descriptor.Registry.INSTANCE);

    private TextUtils() {
    }

    public static String getText(EObject eObject) {
        String result;
        IItemLabelProvider provider = (IItemLabelProvider)factory.adapt((Notifier)eObject, IItemLabelProvider.class);
        if (provider == null) {
            provider = (IItemLabelProvider)TextUtils.getRegisteredAdapter(eObject, IItemLabelProvider.class);
        }
        if (provider == null) {
            provider = (IItemLabelProvider)defaultFactory.adapt((Notifier)eObject, IItemLabelProvider.class);
        }
        if ((result = provider.getText((Object)eObject)) != null) {
            result = result.trim();
        }
        return result;
    }

    private static Object getRegisteredAdapter(EObject eObject, Object type) {
        ResourceSet resourceSet;
        Resource resource;
        Adapter result = EcoreUtil.getExistingAdapter((Notifier)eObject, (Object)type);
        if (result == null && (resource = eObject.eResource()) != null && (resourceSet = resource.getResourceSet()) != null) {
            EList factories = resourceSet.getAdapterFactories();
            Iterator iter = factories.iterator();
            while (iter.hasNext() && result == null) {
                AdapterFactory next = (AdapterFactory)iter.next();
                if (!next.isFactoryForType(type)) continue;
                result = next.adapt((Notifier)eObject, type);
            }
        }
        return result;
    }

    public static String formatMessage(String messagePattern, Object ... inputArg) {
        Object[] args = new Object[inputArg.length];
        int i = 0;
        while (i < args.length) {
            Object next = inputArg[i];
            next = next instanceof Collection ? TextUtils.formatMultiValue((Collection)next) : (next instanceof Object[] ? TextUtils.formatMultiValue(Arrays.asList((Object[])next)) : TextUtils.formatScalarValue(next));
            args[i] = next;
            ++i;
        }
        return NLS.bind((String)messagePattern, (Object[])args);
    }

    private static String formatMultiValue(Collection<?> multiValuedArg) {
        ArrayList args = new ArrayList(multiValuedArg);
        ListIterator<String> iter = args.listIterator();
        while (iter.hasNext()) {
            iter.set(TextUtils.formatScalarValue(iter.next()));
        }
        return EMFModelValidationPlugin.formatList(args);
    }

    private static String formatScalarValue(Object value) {
        if (value instanceof EObject) {
            return TextUtils.getText((EObject)value);
        }
        return String.valueOf(value);
    }
}

