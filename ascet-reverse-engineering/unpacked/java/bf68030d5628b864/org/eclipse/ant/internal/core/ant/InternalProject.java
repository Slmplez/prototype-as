/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.Project
 *  org.apache.tools.ant.ProjectComponent
 */
package org.eclipse.ant.internal.core.ant;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.text.MessageFormat;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Properties;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.ProjectComponent;
import org.eclipse.ant.internal.core.ant.InternalAntMessages;

public class InternalProject
extends Project {
    private Hashtable typeNameToClass = null;
    static /* synthetic */ Class class$0;

    public void init() throws BuildException {
        this.setJavaVersionProperty();
        try {
            Class<?> taskClass = Class.forName("org.apache.tools.ant.taskdefs.Property");
            this.addTaskDefinition("property", taskClass);
            taskClass = Class.forName("org.apache.tools.ant.taskdefs.Typedef");
            this.addTaskDefinition("typedef", taskClass);
            taskClass = Class.forName("org.apache.tools.ant.taskdefs.Taskdef");
            this.addTaskDefinition("taskdef", taskClass);
        }
        catch (NoClassDefFoundError e) {
            throw new BuildException(InternalAntMessages.InternalAntRunner_Missing_Class, (Throwable)e);
        }
        catch (ClassNotFoundException c) {
            throw new BuildException(InternalAntMessages.InternalAntRunner_Missing_Class, (Throwable)c);
        }
        this.setSystemProperties();
    }

    public Object createDataType(String typeName) throws BuildException {
        Class typeClass;
        if (this.typeNameToClass == null) {
            this.initializeTypes();
        }
        if ((typeClass = (Class)this.typeNameToClass.get(typeName)) == null) {
            return null;
        }
        Throwable thrown = null;
        try {
            Constructor ctor = null;
            boolean noArg = false;
            try {
                ctor = typeClass.getConstructor(new Class[0]);
                noArg = true;
            }
            catch (NoSuchMethodException noSuchMethodException) {
                Class[] classArray = new Class[1];
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.apache.tools.ant.Project");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray[0] = clazz;
                ctor = typeClass.getConstructor(classArray);
                noArg = false;
            }
            Object o = null;
            o = noArg ? ctor.newInstance(new Object[0]) : ctor.newInstance(new Object[]{this});
            if (o instanceof ProjectComponent) {
                ((ProjectComponent)o).setProject((Project)this);
            }
            return o;
        }
        catch (InvocationTargetException ite) {
            thrown = ite.getTargetException();
        }
        catch (IllegalArgumentException e) {
            thrown = e;
        }
        catch (InstantiationException e) {
            thrown = e;
        }
        catch (IllegalAccessException e) {
            thrown = e;
        }
        catch (NoSuchMethodException nse) {
            thrown = nse;
        }
        catch (NoClassDefFoundError ncdfe) {
            thrown = ncdfe;
        }
        if (thrown != null) {
            String message = MessageFormat.format(InternalAntMessages.InternalProject_could_not_create_type, typeName, thrown.toString());
            throw new BuildException(message, thrown);
        }
        return null;
    }

    private void initializeTypes() {
        this.typeNameToClass = new Hashtable(18);
        String dataDefs = "/org/apache/tools/ant/types/defaults.properties";
        try {
            InputStream in;
            Properties props = new Properties();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.apache.tools.ant.Project");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((in = clazz.getResourceAsStream(dataDefs)) == null) {
                return;
            }
            props.load(in);
            in.close();
            Enumeration<?> enumeration = props.propertyNames();
            while (enumeration.hasMoreElements()) {
                String typeName = (String)enumeration.nextElement();
                String className = props.getProperty(typeName);
                try {
                    Class<?> typeClass = Class.forName(className);
                    this.typeNameToClass.put(typeName, typeClass);
                }
                catch (NoClassDefFoundError noClassDefFoundError) {
                }
                catch (ClassNotFoundException classNotFoundException) {}
            }
        }
        catch (IOException iOException) {
            return;
        }
    }

    public Hashtable getDataTypeDefinitions() {
        if (this.typeNameToClass == null) {
            this.initializeTypes();
        }
        return this.typeNameToClass;
    }

    public void addDataTypeDefinition(String typeName, Class typeClass) {
        this.getDataTypeDefinitions();
        this.typeNameToClass.put(typeName, typeClass);
    }
}

