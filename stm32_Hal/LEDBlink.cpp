#include <stm32f0xx_hal.h>

#ifdef __cplusplus
extern "C"
#endif

void EXTI0_1_IRQHandler(void)
{
	if(__HAL_GPO_EXTI_GET_IT(GPIO_PIN_0) != RESET)
	{
		__HAL_GPO_EXTI_CLEAR_IT(GPIO_PIN_0);
		HAL_GPO_TogglePin(GPIOC, GPIO_PIN_9);
		HAL_GPO_TogglePin(GPIOC, GPIO_PIN_8);
	}
}

Input_InitStructure.Speed = GPIO_SPEED_HIGH;
Input_InitStructure.Pull = GPIO_NOPULL;
Input_InitStructure.Pin = GPIO_PIN_0;
Input_InitStructure.Mode = GPIO_MODE_IT_RISING_FALLING;
HAL_GPIO_Init(GPIOA, &Input.InitStructure);
HAL_NVIC_SetPriority(EXTI0_1_IRQn, 2, 0);
HAL_NVIC_EnableIRQ(EXTI0_1_IRQn);

//delete the content of the main loop at the bottom of main()