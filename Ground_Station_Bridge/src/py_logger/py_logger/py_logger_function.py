import rclpy
from rclpy.node import Node

from common_package_py.common_node import CommonNode


class DemoLogger(CommonNode):

    def __init__(self):
        super().__init__('demo_logger')
        timer_period = 0.01  # seconds
        self.timer = self.create_timer(timer_period, self.timer_callback)
        self.i = 0

    def timer_callback(self):
        self.get_logger().info('Hello there!')
        self.i += 1


def main(args=None):
    rclpy.init(args=args)

    my_demo_logger = DemoLogger()

    rclpy.spin(my_demo_logger)

    my_demo_logger.destroy_node()
    rclpy.shutdown()


if __name__ == '__main__':
    main()
