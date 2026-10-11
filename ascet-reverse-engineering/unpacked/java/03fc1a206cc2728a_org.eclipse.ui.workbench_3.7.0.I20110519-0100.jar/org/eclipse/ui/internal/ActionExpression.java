/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.osgi.framework.Bundle
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.ui.IActionFilter;
import org.eclipse.ui.internal.LegacyResourceSupport;
import org.eclipse.ui.internal.util.BundleUtility;
import org.eclipse.ui.internal.util.Util;
import org.osgi.framework.Bundle;

public class ActionExpression {
    private static final String ATT_ID = "id";
    private static final String ATT_NAME = "name";
    private static final String ATT_VALUE = "value";
    public static final String EXP_TYPE_AND = "and";
    public static final String EXP_TYPE_NOT = "not";
    public static final String EXP_TYPE_OBJECT_CLASS = "objectClass";
    public static final String EXP_TYPE_OBJECT_STATE = "objectState";
    public static final String EXP_TYPE_OR = "or";
    public static final String EXP_TYPE_PLUG_IN_STATE = "pluginState";
    public static final String EXP_TYPE_SYSTEM_PROPERTY = "systemProperty";
    private static final int HASH_CODE_NOT_COMPUTED = -1;
    private static final int HASH_FACTOR = 89;
    private static final int HASH_INITIAL;
    private static final String PLUGIN_ACTIVATED = "activated";
    private static final String PLUGIN_INSTALLED = "installed";
    private transient int hashCode = -1;
    private SingleExpression root;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.ActionExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    private static AbstractExpression createExpression(IConfigurationElement element) throws IllegalStateException {
        String tag = element.getName();
        if (tag.equals(EXP_TYPE_OR)) {
            return new OrExpression(element);
        }
        if (tag.equals(EXP_TYPE_AND)) {
            return new AndExpression(element);
        }
        if (tag.equals(EXP_TYPE_NOT)) {
            return new NotExpression(element);
        }
        if (tag.equals(EXP_TYPE_OBJECT_STATE)) {
            return new ObjectStateExpression(element);
        }
        if (tag.equals(EXP_TYPE_OBJECT_CLASS)) {
            return new ObjectClassExpression(element);
        }
        if (tag.equals(EXP_TYPE_PLUG_IN_STATE)) {
            return new PluginStateExpression(element);
        }
        if (tag.equals(EXP_TYPE_SYSTEM_PROPERTY)) {
            return new SystemPropertyExpression(element);
        }
        throw new IllegalStateException("Action expression unrecognized element: " + tag);
    }

    public ActionExpression(IConfigurationElement element) {
        try {
            this.root = new SingleExpression(element);
        }
        catch (IllegalStateException e) {
            e.printStackTrace();
            this.root = null;
        }
    }

    public ActionExpression(String expressionType, String expressionValue) {
        if (expressionType.equals(EXP_TYPE_OBJECT_CLASS)) {
            this.root = new SingleExpression(new ObjectClassExpression(expressionValue));
        }
    }

    public final boolean equals(Object object) {
        if (object instanceof ActionExpression) {
            ActionExpression that = (ActionExpression)object;
            return Util.equals(this.root, that.root);
        }
        return false;
    }

    public String[] extractObjectClasses() {
        return this.root.extractObjectClasses();
    }

    public final int hashCode() {
        if (this.hashCode == -1) {
            this.hashCode = HASH_INITIAL * 89 + Util.hashCode(this.root);
            if (this.hashCode == -1) {
                ++this.hashCode;
            }
        }
        return this.hashCode;
    }

    public boolean isEnabledFor(IStructuredSelection selection) {
        if (this.root == null) {
            return false;
        }
        if (selection == null || selection.isEmpty()) {
            return this.root.isEnabledFor(null);
        }
        Iterator elements = selection.iterator();
        while (elements.hasNext()) {
            if (this.isEnabledFor(elements.next())) continue;
            return false;
        }
        return true;
    }

    public boolean isEnabledFor(Object object) {
        if (this.root == null) {
            return false;
        }
        return this.root.isEnabledFor(object);
    }

    public boolean isEnabledForExpression(Object object, String expressionType) {
        if (this.root == null) {
            return false;
        }
        return this.root.isEnabledForExpression(object, expressionType);
    }

    public Collection valuesForExpression(String expressionType) {
        return this.root.valuesForExpression(expressionType);
    }

    private static abstract class AbstractExpression {
        protected transient int expressionHashCode = -1;

        private AbstractExpression() {
        }

        public String[] extractObjectClasses() {
            return null;
        }

        public abstract boolean isEnabledFor(Object var1);

        public boolean isEnabledForExpression(Object object, String expressionType) {
            return false;
        }

        public Collection valuesForExpression(String expressionType) {
            return null;
        }
    }

    private static class AndExpression
    extends CompositeExpression {
        public AndExpression(IConfigurationElement element) throws IllegalStateException {
            super(element);
        }

        public final boolean equals(Object object) {
            if (object instanceof AndExpression) {
                AndExpression that = (AndExpression)object;
                return Util.equals(this.list, that.list);
            }
            return false;
        }

        public boolean isEnabledFor(Object object) {
            Iterator iter = this.list.iterator();
            while (iter.hasNext()) {
                AbstractExpression expr = (AbstractExpression)iter.next();
                if (expr.isEnabledFor(object)) continue;
                return false;
            }
            return true;
        }
    }

    private static abstract class CompositeExpression
    extends AbstractExpression {
        protected ArrayList list;

        public CompositeExpression(IConfigurationElement element) throws IllegalStateException {
            IConfigurationElement[] children = element.getChildren();
            if (children.length == 0) {
                throw new IllegalStateException("Composite expression cannot be empty");
            }
            this.list = new ArrayList(children.length);
            int i = 0;
            while (i < children.length) {
                String tag = children[i].getName();
                AbstractExpression expr = ActionExpression.createExpression(children[i]);
                if (ActionExpression.EXP_TYPE_OBJECT_CLASS.equals(tag)) {
                    this.list.add(0, expr);
                } else {
                    this.list.add(expr);
                }
                ++i;
            }
        }

        public String[] extractObjectClasses() {
            Iterator iterator = this.list.iterator();
            ArrayList<String> classNames = null;
            while (iterator.hasNext()) {
                AbstractExpression next = (AbstractExpression)iterator.next();
                String[] objectClasses = next.extractObjectClasses();
                if (objectClasses == null) continue;
                if (classNames == null) {
                    classNames = new ArrayList<String>();
                }
                int i = 0;
                while (i < objectClasses.length) {
                    classNames.add(objectClasses[i]);
                    ++i;
                }
            }
            if (classNames == null) {
                return null;
            }
            String[] returnValue = new String[classNames.size()];
            classNames.toArray(returnValue);
            return returnValue;
        }

        public final int hashCode() {
            if (this.expressionHashCode == -1) {
                this.expressionHashCode = HASH_INITIAL * 89 + Util.hashCode(this.list);
                if (this.expressionHashCode == -1) {
                    ++this.expressionHashCode;
                }
            }
            return this.expressionHashCode;
        }

        public boolean isEnabledForExpression(Object object, String expressionType) {
            Iterator iterator = this.list.iterator();
            while (iterator.hasNext()) {
                AbstractExpression next = (AbstractExpression)iterator.next();
                if (!next.isEnabledForExpression(object, expressionType)) continue;
                return true;
            }
            return false;
        }

        public Collection valuesForExpression(String expressionType) {
            Iterator iterator = this.list.iterator();
            Collection allValues = null;
            while (iterator.hasNext()) {
                AbstractExpression next = (AbstractExpression)iterator.next();
                Collection values = next.valuesForExpression(expressionType);
                if (values == null) continue;
                if (allValues == null) {
                    allValues = values;
                    continue;
                }
                allValues.addAll(values);
            }
            return allValues;
        }
    }

    private static class NotExpression
    extends SingleExpression {
        public NotExpression(IConfigurationElement element) throws IllegalStateException {
            super(element);
        }

        public boolean isEnabledFor(Object object) {
            return !super.isEnabledFor(object);
        }
    }

    private static class ObjectClassExpression
    extends AbstractExpression {
        private String className;
        private boolean extracted;

        public ObjectClassExpression(IConfigurationElement element) throws IllegalStateException {
            this.className = element.getAttribute(ActionExpression.ATT_NAME);
            if (this.className == null) {
                throw new IllegalStateException("Object class expression missing name attribute");
            }
        }

        public ObjectClassExpression(String className) {
            if (className == null) {
                throw new IllegalStateException("Object class expression must have class name");
            }
            this.className = className;
        }

        private boolean checkInterfaceHierarchy(Class interfaceToCheck) {
            if (interfaceToCheck.getName().equals(this.className)) {
                return true;
            }
            Class<?>[] superInterfaces = interfaceToCheck.getInterfaces();
            int i = 0;
            while (i < superInterfaces.length) {
                if (this.checkInterfaceHierarchy(superInterfaces[i])) {
                    return true;
                }
                ++i;
            }
            return false;
        }

        public final boolean equals(Object object) {
            if (object instanceof ObjectClassExpression) {
                ObjectClassExpression that = (ObjectClassExpression)object;
                return Util.equals(this.className, that.className) && Util.equals(this.extracted, that.extracted);
            }
            return false;
        }

        public String[] extractObjectClasses() {
            this.extracted = true;
            return new String[]{this.className};
        }

        public final int hashCode() {
            if (this.expressionHashCode == -1) {
                this.expressionHashCode = HASH_INITIAL * 89 + Util.hashCode(this.className);
                this.expressionHashCode = this.expressionHashCode * 89 + Util.hashCode(this.extracted);
                if (this.expressionHashCode == -1) {
                    ++this.expressionHashCode;
                }
            }
            return this.expressionHashCode;
        }

        public boolean isEnabledFor(Object object) {
            if (object == null) {
                return false;
            }
            if (this.extracted) {
                return true;
            }
            Class<?> clazz = object.getClass();
            while (clazz != null) {
                if (clazz.getName().equals(this.className)) {
                    return true;
                }
                Class<?>[] interfaces = clazz.getInterfaces();
                int i = 0;
                while (i < interfaces.length) {
                    if (this.checkInterfaceHierarchy(interfaces[i])) {
                        return true;
                    }
                    ++i;
                }
                clazz = clazz.getSuperclass();
            }
            return false;
        }

        public boolean isEnabledForExpression(Object object, String expressionType) {
            if (expressionType.equals(ActionExpression.EXP_TYPE_OBJECT_CLASS)) {
                return this.isEnabledFor(object);
            }
            return false;
        }
    }

    private static class ObjectStateExpression
    extends AbstractExpression {
        private String name;
        private String value;

        public ObjectStateExpression(IConfigurationElement element) throws IllegalStateException {
            this.name = element.getAttribute(ActionExpression.ATT_NAME);
            this.value = element.getAttribute(ActionExpression.ATT_VALUE);
            if (this.name == null || this.value == null) {
                throw new IllegalStateException("Object state expression missing attribute");
            }
        }

        public final boolean equals(Object object) {
            if (object instanceof ObjectStateExpression) {
                ObjectStateExpression that = (ObjectStateExpression)object;
                return Util.equals(this.name, that.name) && Util.equals(this.value, that.value);
            }
            return false;
        }

        private IActionFilter getActionFilter(Object object) {
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.ui.IActionFilter");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            return (IActionFilter)Util.getAdapter(object, clazz);
        }

        public final int hashCode() {
            if (this.expressionHashCode == -1) {
                this.expressionHashCode = HASH_INITIAL * 89 + Util.hashCode(this.name);
                this.expressionHashCode = this.expressionHashCode * 89 + Util.hashCode(this.value);
                if (this.expressionHashCode == -1) {
                    ++this.expressionHashCode;
                }
            }
            return this.expressionHashCode;
        }

        public boolean isEnabledFor(Object object) {
            if (object == null) {
                return false;
            }
            if (this.preciselyMatches(object)) {
                return true;
            }
            Class resourceClass = LegacyResourceSupport.getResourceClass();
            if (resourceClass == null) {
                return false;
            }
            if (resourceClass.isInstance(object)) {
                return false;
            }
            Object res = Util.getAdapter(object, resourceClass);
            if (res == null) {
                return false;
            }
            return this.preciselyMatches(res);
        }

        private boolean preciselyMatches(Object object) {
            IActionFilter filter = this.getActionFilter(object);
            if (filter == null) {
                return false;
            }
            return filter.testAttribute(object, this.name, this.value);
        }

        public Collection valuesForExpression(String expressionType) {
            if (expressionType.equals(this.name)) {
                HashSet<String> returnValue = new HashSet<String>();
                returnValue.add(this.value);
                return returnValue;
            }
            return null;
        }
    }

    private static class OrExpression
    extends CompositeExpression {
        public OrExpression(IConfigurationElement element) throws IllegalStateException {
            super(element);
        }

        public final boolean equals(Object object) {
            if (object instanceof OrExpression) {
                OrExpression that = (OrExpression)object;
                return Util.equals(this.list, that.list);
            }
            return false;
        }

        public boolean isEnabledFor(Object object) {
            Iterator iter = this.list.iterator();
            while (iter.hasNext()) {
                AbstractExpression expr = (AbstractExpression)iter.next();
                if (!expr.isEnabledFor(object)) continue;
                return true;
            }
            return false;
        }
    }

    private static class PluginStateExpression
    extends AbstractExpression {
        private String id;
        private String value;

        public PluginStateExpression(IConfigurationElement element) throws IllegalStateException {
            this.id = element.getAttribute(ActionExpression.ATT_ID);
            this.value = element.getAttribute(ActionExpression.ATT_VALUE);
            if (this.id == null || this.value == null) {
                throw new IllegalStateException("Plugin state expression missing attribute");
            }
        }

        public final boolean equals(Object object) {
            if (object instanceof PluginStateExpression) {
                PluginStateExpression that = (PluginStateExpression)object;
                return Util.equals(this.id, that.id) && Util.equals(this.value, that.value);
            }
            return false;
        }

        public final int hashCode() {
            if (this.expressionHashCode == -1) {
                this.expressionHashCode = HASH_INITIAL * 89 + Util.hashCode(this.id);
                this.expressionHashCode = this.expressionHashCode * 89 + Util.hashCode(this.value);
                if (this.expressionHashCode == -1) {
                    ++this.expressionHashCode;
                }
            }
            return this.expressionHashCode;
        }

        public boolean isEnabledFor(Object object) {
            Bundle bundle = Platform.getBundle((String)this.id);
            if (!BundleUtility.isReady(bundle)) {
                return false;
            }
            if (this.value.equals(ActionExpression.PLUGIN_INSTALLED)) {
                return true;
            }
            if (this.value.equals(ActionExpression.PLUGIN_ACTIVATED)) {
                return BundleUtility.isActivated(bundle);
            }
            return false;
        }
    }

    private static class SingleExpression
    extends AbstractExpression {
        private AbstractExpression child;

        public SingleExpression(AbstractExpression expression) throws IllegalStateException {
            if (expression == null) {
                throw new IllegalStateException("Single expression must contain 1 expression");
            }
            this.child = expression;
        }

        public SingleExpression(IConfigurationElement element) throws IllegalStateException {
            IConfigurationElement[] children = element.getChildren();
            if (children.length != 1) {
                throw new IllegalStateException("Single expression does not contain only 1 expression");
            }
            this.child = ActionExpression.createExpression(children[0]);
        }

        public final boolean equals(Object object) {
            if (object instanceof SingleExpression) {
                SingleExpression that = (SingleExpression)object;
                return Util.equals(this.child, that.child);
            }
            return false;
        }

        public String[] extractObjectClasses() {
            return this.child.extractObjectClasses();
        }

        public final int hashCode() {
            if (this.expressionHashCode == -1) {
                this.expressionHashCode = HASH_INITIAL * 89 + Util.hashCode(this.child);
                if (this.expressionHashCode == -1) {
                    ++this.expressionHashCode;
                }
            }
            return this.expressionHashCode;
        }

        public boolean isEnabledFor(Object object) {
            return this.child.isEnabledFor(object);
        }

        public boolean isEnabledForExpression(Object object, String expressionType) {
            return this.child.isEnabledForExpression(object, expressionType);
        }

        public Collection valuesForExpression(String expressionType) {
            return this.child.valuesForExpression(expressionType);
        }
    }

    private static class SystemPropertyExpression
    extends AbstractExpression {
        private String name;
        private String value;

        public SystemPropertyExpression(IConfigurationElement element) throws IllegalStateException {
            this.name = element.getAttribute(ActionExpression.ATT_NAME);
            this.value = element.getAttribute(ActionExpression.ATT_VALUE);
            if (this.name == null || this.value == null) {
                throw new IllegalStateException("System property expression missing attribute");
            }
        }

        public boolean isEnabledFor(Object object) {
            String str = System.getProperty(this.name);
            if (str == null) {
                return false;
            }
            return this.value.equals(str);
        }

        public final boolean equals(Object object) {
            if (object instanceof SystemPropertyExpression) {
                SystemPropertyExpression that = (SystemPropertyExpression)object;
                return Util.equals(this.name, that.name) && Util.equals(this.value, that.value);
            }
            return false;
        }

        public final int hashCode() {
            if (this.expressionHashCode == -1) {
                this.expressionHashCode = HASH_INITIAL * 89 + Util.hashCode(this.name);
                this.expressionHashCode = this.expressionHashCode * 89 + Util.hashCode(this.value);
                if (this.expressionHashCode == -1) {
                    ++this.expressionHashCode;
                }
            }
            return this.expressionHashCode;
        }
    }
}

