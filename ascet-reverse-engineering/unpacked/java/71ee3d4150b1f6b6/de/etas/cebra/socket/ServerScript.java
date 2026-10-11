/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.socket;

import de.etas.cebra.Cebra;
import de.etas.cebra.socket.CebraMessage;
import de.etas.cebra.socket.CebraServer;
import de.etas.cebra.socket.ClassName;
import de.etas.cebra.socket.ErrorHandle;
import de.etas.cebra.socket.ItemHandle;
import de.etas.cebra.socket.WrongItemTypeException;
import de.etas.types.Identifiable;
import de.etas.util.LogFile;
import de.etas.util.Utilities;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class ServerScript
extends Thread {
    private CebraMessage msg;
    private CebraServer server;
    private static int numberOfInstances = 0;
    private static LogFile lf = new LogFile(String.valueOf(Cebra.cebraLogPath) + Cebra.FS + "ServerScript.log");

    ServerScript(CebraMessage m, CebraServer serv) {
        super("Server Handler");
        this.msg = m;
        this.server = serv;
        ++numberOfInstances;
        this.start();
    }

    private final CebraMessage cs_alive() {
        CebraMessage answer = this.msg.answer();
        answer.aliveMessage();
        return answer;
    }

    private final CebraMessage cs_class(Object obj) {
        CebraMessage answer = this.msg.answer();
        String name = obj.getClass().getName();
        answer.catItem(name);
        return answer;
    }

    private final CebraMessage cs_quit() {
        CebraMessage answer = this.msg.answer();
        answer.setQuitMessage();
        return answer;
    }

    private CebraMessage evaluateMethod() {
        Class[] formalArgs;
        Object[] args;
        String method;
        Object obj = null;
        Class<?> clazz = null;
        Method knownMethod = null;
        Object ergeb = null;
        this.msg.reset();
        ItemHandle firstArg = this.msg.readNext();
        CebraMessage retMsg = this.msg.answer();
        ItemHandle secondArg = this.msg.readNext();
        try {
            method = secondArg.readString();
        }
        catch (WrongItemTypeException wrongItemTypeException) {
            retMsg.catItem(new ErrorHandle(501));
            return retMsg;
        }
        switch (firstArg.type) {
            case 'C': {
                try {
                    clazz = Cebra.getClassByName(firstArg.getClassName());
                    if (clazz != null) break;
                    Cebra.println("Could not find class: " + firstArg.getClassName().toString());
                    lf.logMessage("Could not find class: " + firstArg.getClassName().toString());
                }
                catch (WrongItemTypeException ex) {
                    Cebra.println(ex.toString());
                    lf.logMessage(ex.toString());
                }
                break;
            }
            case 'O': {
                obj = firstArg.oHandle;
                clazz = obj.getClass();
                break;
            }
            case 'X': {
                obj = this;
                clazz = this.getClass();
                method = "cs_" + method;
                break;
            }
            default: {
                retMsg.catItem(new ErrorHandle(501));
                return retMsg;
            }
        }
        ItemHandle item = this.msg.readNext();
        try {
            int numOfArgs = item.readInteger();
            args = new Object[numOfArgs];
            formalArgs = new Class[numOfArgs];
            int i = 0;
            while (i < numOfArgs) {
                item = this.msg.readNext();
                if (item == null) {
                    retMsg.catItem(new ErrorHandle(501));
                    return retMsg;
                }
                args[i] = item.readObject();
                formalArgs[i] = item.getClassOfItem();
                if (formalArgs[i] == null) {
                    retMsg.catItem(new ErrorHandle(501));
                    return retMsg;
                }
                ++i;
            }
        }
        catch (WrongItemTypeException wrongItemTypeException) {
            retMsg.catItem(new ErrorHandle(501));
            return retMsg;
        }
        try {
            knownMethod = clazz.getMethod(method, formalArgs);
            ergeb = knownMethod.invoke(obj, args);
        }
        catch (NoSuchMethodException noSuchMethodException) {
            if (obj == this) {
                knownMethod = this.getKnownMethod(method, formalArgs);
                if (knownMethod == null) {
                    retMsg.catItem(new ErrorHandle(102));
                    return retMsg;
                }
            } else {
                knownMethod = this.getKnownMethod(clazz, method, formalArgs);
                if (knownMethod == null) {
                    retMsg.catItem(new ErrorHandle(888, "Error calling " + method + " in class " + clazz.getName()));
                    return retMsg;
                }
            }
            try {
                ergeb = knownMethod.invoke(obj, args);
            }
            catch (IllegalAccessException illegalAccessException) {
                retMsg.catItem(new ErrorHandle(999, "IllegalAccessException"));
                return retMsg;
            }
            catch (InvocationTargetException invocationTargetException) {
                retMsg.catItem(new ErrorHandle(999, "InvocationTargetException"));
                return retMsg;
            }
            catch (Exception exp) {
                retMsg.catItem(new ErrorHandle(999, "Exception " + exp));
                return retMsg;
            }
        }
        catch (IllegalAccessException illegalAccessException) {
            retMsg.catItem(new ErrorHandle(999, "IllegalAccessException"));
            return retMsg;
        }
        catch (InvocationTargetException invocationTargetException) {
            retMsg.catItem(new ErrorHandle(999, "InvocationTargetException"));
            return retMsg;
        }
        catch (Exception ex) {
            retMsg.catItem(new ErrorHandle(999, "Exception " + ex));
            return retMsg;
        }
        if (obj == this) {
            return (CebraMessage)ergeb;
        }
        if (ergeb == null) {
            retMsg.catItem();
        } else if (ergeb instanceof Character) {
            retMsg.catItem(((Character)ergeb).charValue());
        } else if (ergeb instanceof Boolean) {
            retMsg.catItem((Boolean)ergeb);
        } else if (ergeb instanceof Byte) {
            retMsg.catItem((Byte)ergeb);
        } else if (ergeb instanceof Short) {
            retMsg.catItem((Short)ergeb);
        } else if (ergeb instanceof Integer) {
            retMsg.catItem((Integer)ergeb);
        } else if (ergeb instanceof Long) {
            retMsg.catItem((Long)ergeb);
        } else if (ergeb instanceof Float) {
            retMsg.catItem(((Float)ergeb).floatValue());
        } else if (ergeb instanceof Double) {
            retMsg.catItem((Double)ergeb);
        } else if (ergeb instanceof Identifiable) {
            retMsg.catItem((Identifiable)ergeb);
        } else if (ergeb instanceof ErrorHandle) {
            retMsg.catItem((ErrorHandle)ergeb);
        } else if (ergeb instanceof ItemHandle) {
            retMsg.catItem((ItemHandle)ergeb);
        } else if (ergeb instanceof ClassName) {
            retMsg.catItem((ClassName)ergeb);
        } else if (ergeb instanceof String) {
            retMsg.catItem((String)ergeb);
        } else if (ergeb instanceof Class) {
            retMsg.catItem((Class)ergeb);
        } else {
            retMsg.catItem(ergeb);
        }
        return retMsg;
    }

    public CebraServer getCebraServer() {
        return this.server;
    }

    private Method getKnownMethod(Class clazz, String method, Class[] args) {
        Method[] allMethods = clazz.getMethods();
        Method[] sameName = new Method[allMethods.length];
        int numOfArgs = args.length;
        int numFound = 0;
        int actCount = 0;
        int i = 0;
        while (i < allMethods.length) {
            if (allMethods[i].getName().equals(method)) {
                sameName[numFound] = allMethods[i];
                ++numFound;
            }
            ++i;
        }
        if (numFound == 0) {
            return null;
        }
        i = 0;
        while (i < numFound) {
            if (sameName[i].getParameterTypes().length != numOfArgs) {
                sameName[i] = null;
            } else {
                allMethods[actCount] = sameName[i];
                ++actCount;
            }
            ++i;
        }
        if (actCount == 0) {
            return null;
        }
        numFound = 0;
        int[][] dist = new int[actCount][numOfArgs];
        int i2 = 0;
        while (i2 < actCount) {
            boolean possible = true;
            int j = 0;
            Class<?>[] actArgs = allMethods[i2].getParameterTypes();
            while (possible && j < numOfArgs) {
                dist[numFound][j] = Utilities.distClass(args[j], actArgs[j]);
                possible = dist[numFound][j] >= 0;
                ++j;
            }
            if (possible) {
                sameName[numFound] = allMethods[i2];
                ++numFound;
            }
            ++i2;
        }
        if (numFound == 0) {
            return null;
        }
        if (numFound == 1) {
            return sameName[0];
        }
        int best = 0;
        allMethods[0] = sameName[0];
        int i3 = 1;
        while (i3 < numFound) {
            boolean worse = false;
            boolean better = false;
            int j = 0;
            while (!better && !worse && j < numOfArgs) {
                worse = dist[best][j] < dist[i3][j];
                better = dist[best][j] > dist[i3][j];
                ++j;
            }
            if (better) {
                allMethods[0] = sameName[i3];
                best = i3;
            } else if (!worse && Utilities.distClass(sameName[i3].getDeclaringClass(), allMethods[0].getDeclaringClass()) > 0) {
                allMethods[0] = sameName[i3];
                best = i3;
            }
            ++i3;
        }
        return allMethods[0];
    }

    private Method getKnownMethod(String method, Class[] args) {
        Method[] allMethods = this.getClass().getDeclaredMethods();
        Method[] sameName = new Method[allMethods.length];
        int numOfArgs = args.length;
        int numFound = 0;
        int actCount = 0;
        int i = 0;
        while (i < allMethods.length) {
            if (allMethods[i].getName().equals(method)) {
                sameName[numFound] = allMethods[i];
                ++numFound;
            }
            ++i;
        }
        if (numFound == 0) {
            return null;
        }
        i = 0;
        while (i < numFound) {
            if (sameName[i].getParameterTypes().length != numOfArgs) {
                sameName[i] = null;
            } else {
                allMethods[actCount] = sameName[i];
                ++actCount;
            }
            ++i;
        }
        if (actCount == 0) {
            return null;
        }
        numFound = 0;
        int[][] dist = new int[actCount][numOfArgs];
        int i2 = 0;
        while (i2 < actCount) {
            boolean possible = true;
            int j = 0;
            Class<?>[] actArgs = allMethods[i2].getParameterTypes();
            while (possible && j < numOfArgs) {
                dist[numFound][j] = Utilities.distClass(args[j], actArgs[j]);
                possible = dist[numFound][j] >= 0;
                ++j;
            }
            if (possible) {
                sameName[numFound] = allMethods[i2];
                ++numFound;
            }
            ++i2;
        }
        if (numFound == 0) {
            return null;
        }
        if (numFound == 1) {
            return sameName[0];
        }
        int best = 0;
        allMethods[0] = sameName[0];
        int i3 = 1;
        while (i3 < numFound) {
            boolean worse = false;
            boolean better = false;
            int j = 0;
            while (!better && !worse && j < numOfArgs) {
                worse = dist[best][j] < dist[i3][j];
                better = dist[best][j] > dist[i3][j];
                ++j;
            }
            if (better) {
                allMethods[0] = sameName[i3];
                best = i3;
            } else if (!worse && Utilities.distClass(sameName[i3].getDeclaringClass(), allMethods[0].getDeclaringClass()) > 0) {
                allMethods[0] = sameName[i3];
                best = i3;
            }
            ++i3;
        }
        return allMethods[0];
    }

    public static boolean hasInstances() {
        return numberOfInstances > 0;
    }

    public void run() {
        CebraMessage retMsg = this.evaluateMethod();
        if (retMsg.isHandshakeMessage()) {
            this.server.send(retMsg);
        }
        --numberOfInstances;
    }
}

