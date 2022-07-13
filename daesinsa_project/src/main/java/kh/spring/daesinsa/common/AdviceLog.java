package kh.spring.daesinsa.common;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;


@Service
@Aspect
public class AdviceLog {
	
	private static final Logger logger = LoggerFactory.getLogger(AdviceLog.class);

	@Pointcut("execution(public * kh.spring.daesinsa..*Dao.*(..))")
	public void commonDaoPointCut() {}
	
	@Pointcut("execution(public * kh.spring.daesinsa..*ServiceImpl.*(..))")
	public void commonServicePointCut() {}
	
	@Pointcut("execution(public * kh.spring.daesinsa..*Controller.*(..))")
	public void commonControllerPointCut() {}
	
	@Pointcut("execution(public * kh.spring.daesinsa..*Handler.*(..))")
	public void commonHandlerPointCut() {}
	
	@Around("commonDaoPointCut()")
	public Object aroundLogMethod(ProceedingJoinPoint pjp) throws Throwable {
		Object ro = null;  // 타겟메소드로부터 return 받은 값을 저장
		
		//일단은 info단계로 설정
		logger.info("\t\t @Around(dao) : ["+pjp.getThis()+":"+pjp.getSignature().getName()+"]");
		// 타겟메소드로 전달되는 매개인자들
		Object[] args = pjp.getArgs();
		for(int i=0; i<args.length; i++) {
			//System.out.print("\t\t args["+i+"] "+args[i] +"\n");
			logger.info("\t\t args["+i+"] "+args[i] );
		}	
		
		// 타겟메소드 실행
		ro = pjp.proceed();
		
		// 타겟메소드의 return 값
		//System.out.println("\t\t DAO Ret : "+ ro);
		logger.info("\t\t DAO Ret : "+ ro);
		return ro;
	}
	
	
	@Around("commonControllerPointCut()")
	public Object aroundLogCtrlMethod(ProceedingJoinPoint pjp) throws Throwable {
		Object ro = null;  // 타겟메소드로부터 return 받은 값을 저장
		
		logger.info("\t @Around(controller) : ["+pjp.getThis()+":"+pjp.getSignature().getName()+"]");
		// 타겟메소드로 전달되는 매개인자들
		Object[] args = pjp.getArgs();
		for(int i=0; i<args.length; i++) {
			//System.out.print("\t args["+i+"] "+args[i] +"\n");
			logger.info("\t args["+i+"] "+args[i]);
		}	
		
		// 타겟메소드 실행
		ro = pjp.proceed();
		
		// 타겟메소드의 return 값
		//System.out.println("\t CRTL Ret : "+ ro);
		logger.info("\t CRTL Ret : "+ ro);
		return ro;
	}
	
	@Around("commonHandlerPointCut()")
	public Object aroundLogHadnlerMethod(ProceedingJoinPoint pjp) throws Throwable {
		Object ro = null;  // 타겟메소드로부터 return 받은 값을 저장
		
		logger.info("\t @Around(handler) : ["+pjp.getThis()+":"+pjp.getSignature().getName()+"]");
		// 타겟메소드로 전달되는 매개인자들
		Object[] args = pjp.getArgs();
		for(int i=0; i<args.length; i++) {
			//System.out.print("\t args["+i+"] "+args[i] +"\n");
			logger.info("\t args["+i+"] "+args[i]);
		}	
		
		// 타겟메소드 실행
		ro = pjp.proceed();
		
		// 타겟메소드의 return 값
		//System.out.println("\t CRTL Ret : "+ ro);
		logger.info("\t CRTL Ret : "+ ro);
		return ro;
	}
}
