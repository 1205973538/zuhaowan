package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2021000116687747";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCDNeFDvGZYXFbEMaCD2BPiRtrWlP9fviLnjrxzSDEwRqVspfeN8tGmuWpcQo5Tfg7ZZtVjnQ0LI57GGtka3SxbX5PAgRDhdDP+l4OHWEwxfR8sqaKpjVhV0yiiP3QN9Pdnl6f548RcrlA9m7Qnzu15UPXagjW9K5Yy2N8MiZCXuRxZURB8nqOMwWIDvnkw1zfSK/tydRrqTJUONmYnArXQwJfCB2Ae6IAZR4jF3euOMBEXX4EBZD/bR40P8wLn8frp7R+MBLaQxQiSukXt/9TJWmMPxioboW3Lm4WvqRkmGzOALd6R9qS1NmCKApYcpip9rukjp+Tdm6v40LXH9AklAgMBAAECggEAGLMe2bJwjbesObih38/gRltSPMzFmg9f4Lk07nqrj8vsvhwsEtOf9cO3qvB4fG0hfHloOB1LZEprTB2nuu/htr2yQa3KMLbARu/cubC8fyBvquewEDzkYRuj7Y8GWM5BeIXLADaJM204+7AA5PGGMK016tFSLm8zEhVTP7fxuS3A2vgWwu1UI8wWt/1nzzREPLsDOVb1QWZ6vO/n/2IV5EoekEBs445pxRuL6bvSmn0X22Oz3r09x0QmwnG7JNdY2HY7kBXcMHi2XROtvmCnID1E2TH9bOftC1gSiSqH1qDP/RGY/L8RyQvY1eb3QeILr2l0pm+vh3tXt7Ulx1J7IQKBgQDThyC6Ftup9S+Oxql1OUpbkOZLGPcZdUSChD1pxZrYQUYyv5z2XJcD1oX6ckillQaZaZD4H45T9E9w/dNaF5Gxnu0U1/JQSNW3UNrZ+omvS462c5fgi6c6foT+wIZ1b7PM3uDNQS5deuy5ouoQcaSLeONbvsARWfHLTL9vT+ce2QKBgQCey+cNUEhrrRqfgXk0GIAm38fhBe0CTO0YAirZ0yNSETXmYbPeBmUL4rHuKurczYegYa6YGptfk4MDeA+mBYIYczaS51Z5/LdLU7elgxFu82GIfpK1EsghWKTGXRyvGe5URK3Tk067I1hd2FijXX8hMsvXbzt+ScWolQ7RDWhlLQKBgQDRzD+Icm1yd42w1ZdzfdwjT2cqatuCM448yT5EL0qyXKNsaCIdM55QnzAJQ9qL6HBALrUrc9jtqe41Cnva6m+FtTQ+LSTXvjXCeP5nnpd69rzYd3PWsYyudpggOAHkbmLtus1KpvB+pRIv2MbAgoaKEt+lul6zlvs8AaYJmD2KmQKBgEuaRJ0AFhq9xakfWXdGGu1nKaCm05p+yXrevUwLzAssin7vEVWpsb4g5hnAcSVC7UmceCWOtV6huoSSStD+WlwNrnPulCtr+FBywUKZzlkGou77ZBm1oXbO31RZzGhJbkDMmf3bamaKg23arQjKYNaLeqVNHgQYV3TV0sIRIhzZAoGAZIk24jlblh3NfK5FSHPyzs6i2lsMVTUXCpp0dVrwOM0nV7lBSKfRa3Ty/n++x5ZAqZ5EXuytZxUXpNWTKt+lJAHGm5bS1ULvAiaLLqWEH3okaR+OqJHW4qlxZKJX9IecvjLRJEUdLdr+5PV6YowwqN6z8tcLoW33eai/lLMnmKo=";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAgzXhQ7xmWFxWxDGgg9gT4kba1pT/X74i5468c0gxMEalbKX3jfLRprlqXEKOU34O2WbVY50NCyOexhrZGt0sW1+TwIEQ4XQz/peDh1hMMX0fLKmiqY1YVdMooj90DfT3Z5en+ePEXK5QPZu0J87teVD12oI1vSuWMtjfDImQl7kcWVEQfJ6jjMFiA755MNc30iv7cnUa6kyVDjZmJwK10MCXwgdgHuiAGUeIxd3rjjARF1+BAWQ/20eND/MC5/H66e0fjAS2kMUIkrpF7f/UyVpjD8YqG6Fty5uFr6kZJhszgC3ekfaktTZgigKWHKYqfa7pI6fk3Zur+NC1x/QJJQIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://localhost:8080/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8080/ShowCat/zgfServlet2";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

